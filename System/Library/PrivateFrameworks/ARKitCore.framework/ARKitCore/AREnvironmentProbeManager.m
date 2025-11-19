@interface AREnvironmentProbeManager
- (AREnvironmentProbeManager)initWithMode:(int64_t)a3;
- (BOOL)_addProbeWithAnchor:(id)a3 timestamp:(double)a4 textureImmediately:(BOOL)a5;
- (BOOL)_isBusy;
- (BOOL)_textureDataIsBusy;
- (id).cxx_construct;
- (id)_fullDescription;
- (id)updateProbesForTimestamp:(double)a3 planes:()vector<ARTexturedPlane imageData:(std:(id)a5 :(id)a6 allocator<ARTexturedPlane>> *)a4 pose:(id)a7 enableDirectTexturingForProbesWithIdentifier:;
- (void)_insertIntoQueue:(id)a3;
- (void)_requestTextureForProbe:(id)a3;
- (void)_updateProbesFromExistingAnchors:(id)a3;
@end

@implementation AREnvironmentProbeManager

- (AREnvironmentProbeManager)initWithMode:(int64_t)a3
{
  v32.receiver = self;
  v32.super_class = AREnvironmentProbeManager;
  v4 = [(AREnvironmentProbeManager *)&v32 init];
  v5 = v4;
  if (v4)
  {
    v4->_mode = a3;
    v6 = objc_opt_new();
    initialProbeIdentifiers = v5->_initialProbeIdentifiers;
    v5->_initialProbeIdentifiers = v6;

    v8 = objc_opt_new();
    anchorsToRemove = v5->_anchorsToRemove;
    v5->_anchorsToRemove = v8;

    v10 = objc_opt_new();
    probesByIdentifier = v5->_probesByIdentifier;
    v5->_probesByIdentifier = v10;

    v12 = objc_opt_new();
    probeIdentifiersByPlaneIdentifier = v5->_probeIdentifiersByPlaneIdentifier;
    v5->_probeIdentifiersByPlaneIdentifier = v12;

    v14 = objc_opt_new();
    requestedProbeIdentifiers = v5->_requestedProbeIdentifiers;
    v5->_requestedProbeIdentifiers = v14;

    v16 = objc_opt_new();
    updatedProbeIdentifiers = v5->_updatedProbeIdentifiers;
    v5->_updatedProbeIdentifiers = v16;

    v18 = objc_opt_new();
    directTexturingIdentifiers = v5->_directTexturingIdentifiers;
    v5->_directTexturingIdentifiers = v18;

    v20 = dispatch_semaphore_create(1);
    textureDataSemaphore = v5->_textureDataSemaphore;
    v5->_textureDataSemaphore = v20;

    v22 = objc_opt_new();
    probeUpdateQueue = v5->_probeUpdateQueue;
    v5->_probeUpdateQueue = v22;

    v24 = objc_opt_new();
    currentProbeUpdate = v5->_currentProbeUpdate;
    v5->_currentProbeUpdate = v24;

    [(AREnvironmentProbeUpdate *)v5->_currentProbeUpdate setManager:v5];
    v5->_lastProbeUpdateTime = 0.0;
    [ARKitUserDefaults floatForKey:@"com.apple.arkit.environmentTexturing.minimumProbeUpdateInterval"];
    v5->_minimumProbeUpdateInterval = v26;
    v27 = dispatch_semaphore_create(1);
    semaphore = v5->_semaphore;
    v5->_semaphore = v27;

    v29 = objc_opt_new();
    cubemapGenerator = v5->_cubemapGenerator;
    v5->_cubemapGenerator = v29;
  }

  return v5;
}

- (BOOL)_textureDataIsBusy
{
  v3 = dispatch_semaphore_wait(self->_textureDataSemaphore, 0);
  if (!v3)
  {
    dispatch_semaphore_signal(self->_textureDataSemaphore);
  }

  return v3 != 0;
}

- (BOOL)_isBusy
{
  v3 = dispatch_semaphore_wait(self->_semaphore, 0);
  if (!v3)
  {
    dispatch_semaphore_signal(self->_semaphore);
  }

  return v3 != 0;
}

- (id)_fullDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(AREnvironmentProbeManager *)self description];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  if ([(AREnvironmentProbeManager *)self _isBusy])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v5 appendFormat:@"Status: %@\n", v6];
  if ([(AREnvironmentProbeManager *)self _textureDataIsBusy])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v5 appendFormat:@"TextureData Status: %@\n", v7];
  [v5 appendFormat:@"LastImageData: %@\n", self->_lastImageData];

  return v5;
}

- (void)_insertIntoQueue:(id)a3
{
  v10 = a3;
  v4 = [(NSMutableArray *)self->_probeUpdateQueue indexOfObject:?];
  probeUpdateQueue = self->_probeUpdateQueue;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)probeUpdateQueue addObject:v10];
  }

  else
  {
    v6 = [(NSMutableArray *)probeUpdateQueue objectAtIndexedSubscript:v4];
    [v6 lastUpdateTimestamp];
    v8 = v7;

    [(NSMutableArray *)self->_probeUpdateQueue replaceObjectAtIndex:v4 withObject:v10];
    v9 = [(NSMutableArray *)self->_probeUpdateQueue objectAtIndexedSubscript:v4];
    [v9 setLastUpdateTimestamp:v8];
  }
}

- (id)updateProbesForTimestamp:(double)a3 planes:()vector<ARTexturedPlane imageData:(std:(id)a5 :(id)a6 allocator<ARTexturedPlane>> *)a4 pose:(id)a7 enableDirectTexturingForProbesWithIdentifier:
{
  v219 = *MEMORY[0x1E69E9840];
  v167 = a5;
  v12 = a6;
  v166 = a7;
  v156 = v12;
  if (v12)
  {
    [v12 cameraTransform];
    v161 = v14;
    v163 = v13;
    v157 = v16;
    v159 = v15;
  }

  else
  {
    v161 = *(MEMORY[0x1E69E9B18] + 16);
    v163 = *MEMORY[0x1E69E9B18];
    v157 = *(MEMORY[0x1E69E9B18] + 48);
    v159 = *(MEMORY[0x1E69E9B18] + 32);
  }

  v17 = v12 != 0;
  dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
  objc_storeStrong(&self->_lastImageData, a5);
  *self->_anon_80 = v163;
  *&self->_anon_80[16] = v161;
  *&self->_anon_80[32] = v159;
  *&self->_anon_80[48] = v157;
  if (v167)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  self->_isReady = v18;
  dispatch_semaphore_signal(self->_semaphore);
  v172 = objc_opt_new();
  v19 = objc_opt_new();
  v169 = objc_opt_new();
  dispatch_semaphore_wait(self->_textureDataSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [(NSMutableArray *)self->_directTexturingIdentifiers addObjectsFromArray:v166];
  [v169 addObjectsFromArray:self->_anchorsToRemove];
  [(NSMutableArray *)self->_anchorsToRemove removeAllObjects];
  v20 = [(NSMutableDictionary *)self->_probeIdentifiersByPlaneIdentifier allValues];
  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v21 = self->_probesByIdentifier;
  v22 = [(NSMutableDictionary *)v21 countByEnumeratingWithState:&v198 objects:v218 count:16];
  if (v22)
  {
    v23 = *v199;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v199 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v198 + 1) + 8 * i);
        if (([v20 containsObject:v25] & 1) == 0)
        {
          v26 = [(NSMutableDictionary *)self->_probesByIdentifier objectForKeyedSubscript:v25];
          if (([v25 isEqual:self->_universeProbeIdentifier] & 1) == 0 && (objc_msgSend(v26, "lastUpdateTimestamp"), a3 - v27 > 3.0) || objc_msgSend(v25, "isEqual:", self->_universeProbeIdentifier) && (objc_msgSend(v26, "lastUpdateTimestamp"), a3 - v28 > 15.0))
          {
            requestedProbeIdentifiers = self->_requestedProbeIdentifiers;
            v30 = [v26 identifier];
            LOBYTE(requestedProbeIdentifiers) = [(NSMutableArray *)requestedProbeIdentifiers containsObject:v30];

            if ((requestedProbeIdentifiers & 1) == 0)
            {
              v31 = [v26 copy];
              [v31 setLastUpdateTimestamp:a3];
              [(AREnvironmentProbeManager *)self _insertIntoQueue:v31];
            }
          }
        }
      }

      v22 = [(NSMutableDictionary *)v21 countByEnumeratingWithState:&v198 objects:v218 count:16];
    }

    while (v22);
  }

  if ([(NSMutableArray *)self->_initialProbeIdentifiers count]&& self->_isReady)
  {
    v196 = 0u;
    v197 = 0u;
    v194 = 0u;
    v195 = 0u;
    v32 = self->_initialProbeIdentifiers;
    v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v194 objects:v217 count:16];
    if (v33)
    {
      v34 = *v195;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v195 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = [(NSMutableDictionary *)self->_probesByIdentifier objectForKeyedSubscript:*(*(&v194 + 1) + 8 * j)];
          v37 = [v36 copy];

          [v37 setLastUpdateTimestamp:a3];
          [(AREnvironmentProbeManager *)self _insertIntoQueue:v37];
        }

        v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v194 objects:v217 count:16];
      }

      while (v33);
    }

    [(NSMutableArray *)self->_initialProbeIdentifiers removeAllObjects];
  }

  if (self->_mode == 2)
  {
    if (!self->_universeProbeIdentifier && self->_isReady)
    {
      v192 = 0u;
      v193 = 0u;
      v190 = 0u;
      v191 = 0u;
      v38 = [(NSMutableDictionary *)self->_probesByIdentifier allValues];
      v39 = [v38 countByEnumeratingWithState:&v190 objects:v216 count:16];
      if (v39)
      {
        v40 = *v191;
        while (2)
        {
          for (k = 0; k != v39; ++k)
          {
            if (*v191 != v40)
            {
              objc_enumerationMutation(v38);
            }

            v42 = *(*(&v190 + 1) + 8 * k);
            [v42 extent];
            if (fabsf(v43) != INFINITY)
            {
              [v42 extent];
              if (fabsf(v44) != INFINITY)
              {
                [v42 extent];
                if (fabsf(v45) != INFINITY)
                {
                  continue;
                }
              }
            }

            v46 = [v42 identifier];
            universeProbeIdentifier = self->_universeProbeIdentifier;
            self->_universeProbeIdentifier = v46;

            goto LABEL_47;
          }

          v39 = [v38 countByEnumeratingWithState:&v190 objects:v216 count:16];
          if (v39)
          {
            continue;
          }

          break;
        }
      }

LABEL_47:

      if (!self->_universeProbeIdentifier)
      {
        v48 = objc_opt_new();
        v49 = self->_universeProbeIdentifier;
        self->_universeProbeIdentifier = v48;

        v50 = [AREnvironmentProbeAnchor alloc];
        v51 = [(AREnvironmentProbeAnchor *)v50 initWithIdentifier:self->_universeProbeIdentifier transform:*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48)];
        v52 = _ARLogGeneral();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = objc_opt_class();
          v54 = NSStringFromClass(v53);
          *buf = 138543874;
          *&buf[4] = v54;
          v207 = 2048;
          v208 = self;
          v209 = 2114;
          v210 = v51;
          _os_log_impl(&dword_1C241C000, v52, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Added universe probe: %{public}@", buf, 0x20u);
        }

        [(NSMutableDictionary *)self->_probesByIdentifier setObject:v51 forKeyedSubscript:self->_universeProbeIdentifier];
        [v172 addObject:v51];
        v55 = [(AREnvironmentProbeAnchor *)v51 copy];
        [v55 setLastUpdateTimestamp:a3];
        [(AREnvironmentProbeManager *)self _insertIntoQueue:v55];
      }
    }

    v189[1] = 0;
    v189[0] = 0;
    v188 = v189;
    begin = a4->__begin_;
    end = a4->__end_;
    if (a4->__begin_ != end)
    {
      p_end_node = &begin[3].var4.__tree_.__end_node_;
      do
      {
        *buf = begin;
        v59 = std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(&v188, begin->var0.var0);
        v60 = v59;
        var0 = begin->var0;
        v62 = *&begin->var1;
        v63 = *&begin->var5;
        *(v59 + 80) = *&begin->var4.__tree_.__end_node_.__left_;
        *(v59 + 96) = v63;
        *(v59 + 48) = var0;
        *(v59 + 64) = v62;
        v64 = *(&begin[1].var0 + 8);
        v65 = *&begin[1].var4.__tree_.__begin_node_;
        v66 = begin[2].var0;
        *(v59 + 144) = *&begin[1].var4.__tree_.__size_;
        *(v59 + 160) = v66;
        *(v59 + 112) = v64;
        *(v59 + 128) = v65;
        v67 = *&begin[2].var1;
        v68 = *&begin[2].var4.__tree_.__end_node_.__left_;
        v69 = *(&begin[3].var0 + 8);
        *(v59 + 208) = *&begin[2].var5;
        *(v59 + 224) = v69;
        *(v59 + 176) = v67;
        *(v59 + 192) = v68;
        if ((v59 + 48) != begin)
        {
          std::__tree<std::array<unsigned char,16ul>>::__assign_multi<std::__tree_const_iterator<std::array<unsigned char,16ul>,std::__tree_node<std::array<unsigned char,16ul>,void *> *,long>>((v59 + 240), begin[3].var4.__tree_.__begin_node_, p_end_node);
        }

        objc_storeStrong((v60 + 264), begin[3].var5);
        begin += 4;
        p_end_node += 28;
      }

      while (begin != end);
    }

    keys<std::array<unsigned char,16ul>,ARTexturedPlane>(&v188, v187);
    v186[1] = 0;
    v186[0] = 0;
    v185 = v186;
    v70 = self->_lastPlanes.__begin_;
    v71 = self->_lastPlanes.__end_;
    while (v70 != v71)
    {
      std::__tree<std::array<unsigned char,16ul>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::array<unsigned char,16ul> const&>(&v185, v70->var0.var0);
      v70 += 4;
    }

    notInLeftButRight<std::array<unsigned char,16ul>>(&v185, v187, &v183);
    notInLeftButRight<std::array<unsigned char,16ul>>(v187, &v185, &v181);
    intersect<std::array<unsigned char,16ul>>(&v185, v187, &v179);
    v178[0] = 0;
    v178[1] = 0;
    v177 = v178;
    v72 = v179;
    if (v179 != v180)
    {
      do
      {
        v73 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v72 + 25];
        v74 = [(NSMutableDictionary *)self->_probeIdentifiersByPlaneIdentifier objectForKeyedSubscript:v73];
        v75 = [(NSMutableDictionary *)self->_probesByIdentifier objectForKeyedSubscript:v74];
        *buf = v72 + 25;
        if (!*(std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(&v188, v72 + 25) + 64) || ([v75 lastUpdateTimestamp], a3 - v76 > 3.0))
        {
          std::__tree<std::array<unsigned char,16ul>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::array<unsigned char,16ul> const&>(&v177, v72 + 25);
        }

        v77 = *(v72 + 1);
        if (v77)
        {
          do
          {
            v78 = v77;
            v77 = *v77;
          }

          while (v77);
        }

        else
        {
          do
          {
            v78 = *(v72 + 2);
            v79 = *v78 == v72;
            v72 = v78;
          }

          while (!v79);
        }

        v72 = v78;
      }

      while (v78 != v180);
      v80 = v177;
      if (v177 != v178)
      {
        do
        {
          v170 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v80 + 25];
          v81 = [(NSMutableDictionary *)self->_probeIdentifiersByPlaneIdentifier objectForKeyedSubscript:?];
          v82 = [(NSMutableDictionary *)self->_probesByIdentifier objectForKeyedSubscript:v81];
          if (v82 && ([(NSMutableArray *)self->_requestedProbeIdentifiers containsObject:v81]& 1) == 0)
          {
            v83 = [AREnvironmentProbeAnchor alloc];
            *buf = v80 + 25;
            v84 = std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(&v188, v80 + 25);
            v85 = *(v84 + 192);
            v213[8] = *(v84 + 176);
            v213[9] = v85;
            v86 = *(v84 + 224);
            v213[10] = *(v84 + 208);
            v213[11] = v86;
            v87 = *(v84 + 128);
            v213[4] = *(v84 + 112);
            v213[5] = v87;
            v88 = *(v84 + 160);
            v213[6] = *(v84 + 144);
            v213[7] = v88;
            v89 = *(v84 + 64);
            v213[0] = *(v84 + 48);
            v213[1] = v89;
            v90 = *(v84 + 96);
            v213[2] = *(v84 + 80);
            v213[3] = v90;
            std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v214, v84 + 240);
            v215 = *(v84 + 264);
            v91 = [(AREnvironmentProbeAnchor *)v83 initWithIdentifier:v81 onPlane:v213];

            std::__tree<std::array<unsigned char,16ul>>::destroy(v214, v214[1]);
            if ([(NSMutableArray *)self->_probeUpdateQueue indexOfObject:v91]== 0x7FFFFFFFFFFFFFFFLL)
            {
              v92 = _ARLogGeneral();
              if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
              {
                v93 = objc_opt_class();
                v94 = NSStringFromClass(v93);
                *buf = 138544130;
                *&buf[4] = v94;
                v207 = 2048;
                v208 = self;
                v209 = 2114;
                v210 = v170;
                v211 = 2114;
                v212 = v91;
                _os_log_impl(&dword_1C241C000, v92, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Updating probe for plane %{public}@: %{public}@", buf, 0x2Au);
              }
            }

            *buf = v80 + 25;
            if (*(std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(&v188, v80 + 25) + 64))
            {
              [v82 lastUpdateTimestamp];
              if (a3 - v95 > 3.0)
              {
                v96 = [v82 colorHistogram];
                [(AREnvironmentProbeAnchor *)v91 setColorHistogram:v96];

                [v82 opaquePixelPercentage];
                [(AREnvironmentProbeAnchor *)v91 setOpaquePixelPercentage:?];
              }
            }

            [(ARAnchor *)v91 setLastUpdateTimestamp:a3];
            [(AREnvironmentProbeManager *)self _insertIntoQueue:v91];
          }

          v97 = *(v80 + 1);
          if (v97)
          {
            do
            {
              v98 = v97;
              v97 = *v97;
            }

            while (v97);
          }

          else
          {
            do
            {
              v98 = *(v80 + 2);
              v79 = *v98 == v80;
              v80 = v98;
            }

            while (!v79);
          }

          v80 = v98;
        }

        while (v98 != v178);
      }
    }

    v99 = v183;
    if (v183 != v184)
    {
      do
      {
        v100 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v99 + 25];
        v101 = objc_opt_new();
        v102 = [AREnvironmentProbeAnchor alloc];
        *buf = v99 + 25;
        v103 = std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(&v188, v99 + 25);
        v104 = *(v103 + 192);
        v203[8] = *(v103 + 176);
        v203[9] = v104;
        v105 = *(v103 + 224);
        v203[10] = *(v103 + 208);
        v203[11] = v105;
        v106 = *(v103 + 128);
        v203[4] = *(v103 + 112);
        v203[5] = v106;
        v107 = *(v103 + 160);
        v203[6] = *(v103 + 144);
        v203[7] = v107;
        v108 = *(v103 + 64);
        v203[0] = *(v103 + 48);
        v203[1] = v108;
        v109 = *(v103 + 96);
        v203[2] = *(v103 + 80);
        v203[3] = v109;
        std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v204, v103 + 240);
        v205 = *(v103 + 264);
        v110 = [(AREnvironmentProbeAnchor *)v102 initWithIdentifier:v101 onPlane:v203];

        std::__tree<std::array<unsigned char,16ul>>::destroy(v204, v204[1]);
        v111 = _ARLogGeneral();
        if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
        {
          v112 = objc_opt_class();
          v113 = NSStringFromClass(v112);
          *buf = 138544130;
          *&buf[4] = v113;
          v207 = 2048;
          v208 = self;
          v209 = 2114;
          v210 = v100;
          v211 = 2114;
          v212 = v110;
          _os_log_impl(&dword_1C241C000, v111, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Added probe for plane %{public}@: %{public}@", buf, 0x2Au);
        }

        [(NSMutableDictionary *)self->_probesByIdentifier setObject:v110 forKeyedSubscript:v101];
        [(NSMutableDictionary *)self->_probeIdentifiersByPlaneIdentifier setObject:v101 forKeyedSubscript:v100];
        [v172 addObject:v110];
        v114 = [(AREnvironmentProbeAnchor *)v110 copy];
        [v114 setLastUpdateTimestamp:a3];
        [(AREnvironmentProbeManager *)self _insertIntoQueue:v114];

        v115 = *(v99 + 1);
        if (v115)
        {
          do
          {
            v116 = v115;
            v115 = *v115;
          }

          while (v115);
        }

        else
        {
          do
          {
            v116 = *(v99 + 2);
            v79 = *v116 == v99;
            v99 = v116;
          }

          while (!v79);
        }

        v99 = v116;
      }

      while (v116 != v184);
    }

    v117 = v181;
    if (v181 != v182)
    {
      do
      {
        v118 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v117 + 25];
        v119 = [(NSMutableDictionary *)self->_probeIdentifiersByPlaneIdentifier objectForKeyedSubscript:v118];
        [(NSMutableDictionary *)self->_probeIdentifiersByPlaneIdentifier removeObjectForKey:v118];
        v120 = [(NSMutableDictionary *)self->_probesByIdentifier objectForKeyedSubscript:v119];
        if (v120)
        {
          v121 = _ARLogGeneral();
          if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
          {
            v122 = objc_opt_class();
            v123 = NSStringFromClass(v122);
            *buf = 138544130;
            *&buf[4] = v123;
            v207 = 2048;
            v208 = self;
            v209 = 2114;
            v210 = v118;
            v211 = 2114;
            v212 = v120;
            _os_log_impl(&dword_1C241C000, v121, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Removed probe for plane %{public}@: %{public}@", buf, 0x2Au);
          }

          [v169 addObject:v120];
          [(NSMutableDictionary *)self->_probesByIdentifier removeObjectForKey:v119];
          [(NSMutableArray *)self->_probeUpdateQueue removeObject:v120];
        }

        v124 = v117[1];
        if (v124)
        {
          do
          {
            v125 = v124;
            v124 = *v124;
          }

          while (v124);
        }

        else
        {
          do
          {
            v125 = v117[2];
            v79 = *v125 == v117;
            v117 = v125;
          }

          while (!v79);
        }

        v117 = v125;
      }

      while (v125 != v182);
    }

    std::__tree<std::array<unsigned char,16ul>>::destroy(&v177, v178[0]);
    std::__tree<std::array<unsigned char,16ul>>::destroy(&v179, v180[0]);
    std::__tree<std::array<unsigned char,16ul>>::destroy(&v181, v182[0]);
    std::__tree<std::array<unsigned char,16ul>>::destroy(&v183, v184[0]);
    std::__tree<std::array<unsigned char,16ul>>::destroy(&v185, v186[0]);
    std::__tree<std::array<unsigned char,16ul>>::destroy(v187, v187[1]);
    std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(&v188, v189[0]);
  }

  if (v167 && [v167 pixelBuffer] && -[NSMutableArray count](self->_probeUpdateQueue, "count") && a3 - self->_lastProbeUpdateTime > self->_minimumProbeUpdateInterval)
  {
    v126 = [(NSMutableArray *)self->_probeUpdateQueue objectAtIndex:0];
    [v126 referenceTransform];
    v171 = v127;
    v168 = v128;
    v154 = v130;
    v155 = v129;
    [v126 extent];
    v153 = v131;
    v220.columns[1] = v161;
    v220.columns[0] = v163;
    v220.columns[3] = v157;
    v220.columns[2] = v159;
    v221 = __invert_f4(v220);
    v162 = v221.columns[2];
    v164 = v221.columns[0];
    v158 = v221.columns[1];
    v160 = v221.columns[3];
    [v167 cameraIntrinsics];
    v152 = v132;
    CVPixelBufferGetWidth([v167 pixelBuffer]);
    Height = CVPixelBufferGetHeight([v167 pixelBuffer]);
    if (ARIsBoxInViewFrustum(v171, v168, v155, v154, v153, Height, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v164, v158, v162, v160, v152))
    {
      self->_lastProbeUpdateTime = a3;
      [v126 setLastUpdateTimestamp:a3];
      [(NSMutableArray *)self->_probeUpdateQueue removeObjectAtIndex:0];
      [(AREnvironmentProbeManager *)self _requestTextureForProbe:v126];
    }

    else
    {
      [(NSMutableArray *)self->_probeUpdateQueue removeObjectAtIndex:0];
      [(AREnvironmentProbeManager *)self _insertIntoQueue:v126];
    }
  }

  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v144 = self->_updatedProbeIdentifiers;
  v145 = [(NSMutableArray *)v144 countByEnumeratingWithState:&v173 objects:v202 count:16];
  if (v145)
  {
    v146 = *v174;
    do
    {
      for (m = 0; m != v145; ++m)
      {
        if (*v174 != v146)
        {
          objc_enumerationMutation(v144);
        }

        v148 = [(NSMutableDictionary *)self->_probesByIdentifier objectForKeyedSubscript:*(*(&v173 + 1) + 8 * m)];
        if (v148)
        {
          [v19 addObject:v148];
        }
      }

      v145 = [(NSMutableArray *)v144 countByEnumeratingWithState:&v173 objects:v202 count:16];
    }

    while (v145);
  }

  [(NSMutableArray *)self->_updatedProbeIdentifiers removeAllObjects];
  dispatch_semaphore_signal(self->_textureDataSemaphore);
  dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
  std::vector<ARTexturedPlane>::__vdeallocate(&self->_lastPlanes);
  *&self->_lastPlanes.__begin_ = *&a4->__begin_;
  self->_lastPlanes.__cap_ = a4->__cap_;
  a4->__begin_ = 0;
  a4->__end_ = 0;
  a4->__cap_ = 0;
  dispatch_semaphore_signal(self->_semaphore);
  [(AREnvironmentProbeUpdate *)self->_currentProbeUpdate updateAddedProbeAnchors:v172 updatedProbeAnchors:v19 removedProbeAnchors:v169];
  currentProbeUpdate = self->_currentProbeUpdate;
  v150 = currentProbeUpdate;

  return currentProbeUpdate;
}

- (void)_updateProbesFromExistingAnchors:(id)a3
{
  v108 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_semaphore_wait(self->_textureDataSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v76 = objc_opt_new();
  v75 = objc_opt_new();
  v72 = objc_opt_new();
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v93 objects:v107 count:16];
  if (v6)
  {
    v7 = *v94;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v94 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v93 + 1) + 8 * i);
        probesByIdentifier = self->_probesByIdentifier;
        v11 = [v9 identifier];
        v12 = [(NSMutableDictionary *)probesByIdentifier objectForKeyedSubscript:v11];
        LODWORD(probesByIdentifier) = v12 == 0;

        if (probesByIdentifier)
        {
          v13 = v76;
        }

        else
        {
          v13 = v75;
        }

        [v13 addObject:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v93 objects:v107 count:16];
    }

    while (v6);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v14 = self->_probesByIdentifier;
  v15 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v89 objects:v106 count:16];
  if (v15)
  {
    v16 = *v90;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v90 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v89 + 1) + 8 * j);
        v19 = [(NSMutableDictionary *)self->_probesByIdentifier objectForKeyedSubscript:v18];
        v20 = [v5 containsObject:v19];

        if ((v20 & 1) == 0)
        {
          v21 = [(NSMutableDictionary *)self->_probesByIdentifier objectForKeyedSubscript:v18];
          [v72 addObject:v21];
        }
      }

      v15 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v89 objects:v106 count:16];
    }

    while (v15);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = v76;
  v22 = [obj countByEnumeratingWithState:&v85 objects:v105 count:16];
  if (v22)
  {
    v23 = *v86;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v86 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v85 + 1) + 8 * k);
        directTexturingIdentifiers = self->_directTexturingIdentifiers;
        v27 = [v25 identifier];
        v28 = [(NSMutableArray *)directTexturingIdentifiers containsObject:v27];

        if (v28)
        {
          v29 = self->_directTexturingIdentifiers;
          v30 = [v25 identifier];
          [(NSMutableArray *)v29 removeObject:v30];
        }

        v31 = [(AREnvironmentProbeManager *)self _addProbeWithAnchor:v25 timestamp:v28 textureImmediately:0.0];
        v32 = _ARLogGeneral();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);
        if (v31)
        {
          if (v33)
          {
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            *buf = 138543874;
            v100 = v35;
            v101 = 2048;
            v102 = self;
            v103 = 2114;
            v104 = v25;
            _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Added probe: %{public}@", buf, 0x20u);
          }
        }

        else
        {
          if (v33)
          {
            v36 = objc_opt_class();
            v37 = NSStringFromClass(v36);
            *buf = 138543874;
            v100 = v37;
            v101 = 2048;
            v102 = self;
            v103 = 2114;
            v104 = v25;
            _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Removed redundant probe: %{public}@", buf, 0x20u);
          }

          [(NSMutableArray *)self->_anchorsToRemove addObject:v25];
        }
      }

      v22 = [obj countByEnumeratingWithState:&v85 objects:v105 count:16];
    }

    while (v22);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v73 = v75;
  v38 = [v73 countByEnumeratingWithState:&v81 objects:v98 count:16];
  if (v38)
  {
    v39 = *v82;
    do
    {
      for (m = 0; m != v38; ++m)
      {
        if (*v82 != v39)
        {
          objc_enumerationMutation(v73);
        }

        v41 = *(*(&v81 + 1) + 8 * m);
        v42 = self->_probesByIdentifier;
        v43 = [v41 identifier];
        v44 = [(NSMutableDictionary *)v42 objectForKeyedSubscript:v43];
        [v44 lastUpdateTimestamp];
        v46 = v45;
        [v41 lastUpdateTimestamp];
        v48 = v46 > v47;

        if (!v48)
        {
          v49 = self->_probesByIdentifier;
          v50 = [v41 identifier];
          v51 = [(NSMutableDictionary *)v49 objectForKeyedSubscript:v50];

          v52 = self->_probesByIdentifier;
          v53 = [v41 identifier];
          [(NSMutableDictionary *)v52 setObject:v41 forKeyedSubscript:v53];

          updatedProbeIdentifiers = self->_updatedProbeIdentifiers;
          v55 = [v41 identifier];
          LODWORD(updatedProbeIdentifiers) = [(NSMutableArray *)updatedProbeIdentifiers containsObject:v55];

          if (updatedProbeIdentifiers)
          {
            v56 = [v51 environmentTexture];
            [v41 setEnvironmentTexture:v56];

            v57 = [v51 colorHistogram];
            [v41 setColorHistogram:v57];

            [v51 opaquePixelPercentage];
            [v41 setOpaquePixelPercentage:?];
          }
        }
      }

      v38 = [v73 countByEnumeratingWithState:&v81 objects:v98 count:16];
    }

    while (v38);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v58 = v72;
  v59 = [v58 countByEnumeratingWithState:&v77 objects:v97 count:16];
  if (v59)
  {
    v60 = *v78;
    do
    {
      for (n = 0; n != v59; ++n)
      {
        if (*v78 != v60)
        {
          objc_enumerationMutation(v58);
        }

        v62 = *(*(&v77 + 1) + 8 * n);
        v63 = _ARLogGeneral();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          v64 = objc_opt_class();
          v65 = NSStringFromClass(v64);
          *buf = 138543874;
          v100 = v65;
          v101 = 2048;
          v102 = self;
          v103 = 2114;
          v104 = v62;
          _os_log_impl(&dword_1C241C000, v63, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Removed probe: %{public}@", buf, 0x20u);
        }

        v66 = self->_probesByIdentifier;
        v67 = [v62 identifier];
        [(NSMutableDictionary *)v66 removeObjectForKey:v67];

        initialProbeIdentifiers = self->_initialProbeIdentifiers;
        v69 = [v62 identifier];
        [(NSMutableArray *)initialProbeIdentifiers removeObject:v69];

        [(NSMutableArray *)self->_probeUpdateQueue removeObject:v62];
        v70 = [v62 identifier];
        LODWORD(initialProbeIdentifiers) = [v70 isEqual:self->_universeProbeIdentifier];

        if (initialProbeIdentifiers)
        {
          universeProbeIdentifier = self->_universeProbeIdentifier;
          self->_universeProbeIdentifier = 0;
        }
      }

      v59 = [v58 countByEnumeratingWithState:&v77 objects:v97 count:16];
    }

    while (v59);
  }

  dispatch_semaphore_signal(self->_textureDataSemaphore);
}

- (BOOL)_addProbeWithAnchor:(id)a3 timestamp:(double)a4 textureImmediately:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = v8;
  if (self->_mode != 2)
  {
    goto LABEL_10;
  }

  v10 = [v8 trackedPlaneIdentifier];

  if (v10)
  {
    v11 = [v9 trackedPlaneIdentifier];
    v12 = [(NSMutableDictionary *)self->_probeIdentifiersByPlaneIdentifier objectForKeyedSubscript:v11];
    LOBYTE(v5) = v12 == 0;

    if (v12)
    {
LABEL_16:

      goto LABEL_17;
    }

    v13 = [v9 identifier];
    [(NSMutableDictionary *)self->_probeIdentifiersByPlaneIdentifier setObject:v13 forKeyedSubscript:v11];

    probesByIdentifier = self->_probesByIdentifier;
    v15 = [v9 identifier];
    [(NSMutableDictionary *)probesByIdentifier setObject:v9 forKeyedSubscript:v15];

LABEL_15:
    LOBYTE(v5) = 1;
    goto LABEL_16;
  }

  if (([v9 extent], fabsf(v16) != INFINITY) && (objc_msgSend(v9, "extent"), fabsf(v17) != INFINITY) && (objc_msgSend(v9, "extent"), fabsf(v18) != INFINITY) || !self->_universeProbeIdentifier || v5)
  {
LABEL_10:
    v19 = self->_probesByIdentifier;
    v20 = [v9 identifier];
    [(NSMutableDictionary *)v19 setObject:v9 forKeyedSubscript:v20];

    dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
    LODWORD(v20) = self->_isReady;
    dispatch_semaphore_signal(self->_semaphore);
    if (v20 == 1)
    {
      v11 = [v9 copy];
      [v11 setLastUpdateTimestamp:a4];
      if (v5)
      {
        [(AREnvironmentProbeManager *)self _requestTextureForProbe:v11];
      }

      else
      {
        [(AREnvironmentProbeManager *)self _insertIntoQueue:v11];
      }
    }

    else
    {
      initialProbeIdentifiers = self->_initialProbeIdentifiers;
      v11 = [v9 identifier];
      [(NSMutableArray *)initialProbeIdentifiers addObject:v11];
    }

    goto LABEL_15;
  }

LABEL_17:

  return v5;
}

- (void)_requestTextureForProbe:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _ARLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 identifier];
    *buf = 138543874;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2114;
    *&buf[24] = v8;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Requesting texture for probe %{public}@", buf, 0x20u);
  }

  requestedProbeIdentifiers = self->_requestedProbeIdentifiers;
  v10 = [v4 identifier];
  [(NSMutableArray *)requestedProbeIdentifiers addObject:v10];

  dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
  v11 = self->_lastImageData;
  v43 = *&self->_anon_80[16];
  v44 = *self->_anon_80;
  v41 = *&self->_anon_80[48];
  v42 = *&self->_anon_80[32];
  v12 = convertToMeshes(&self->_lastPlanes.__begin_);
  dispatch_semaphore_signal(self->_semaphore);
  kdebug_trace();
  memset(buf, 0, 512);
  ARLabHistogramCreate(buf);
  v13 = [v4 colorHistogram];
  v14 = v13 == 0;

  if (!v14)
  {
    v15 = [v4 colorHistogram];
    [v15 getBytes:&buf[4] length:1024];

    [v4 opaquePixelPercentage];
    *buf = v16;
  }

  cubemapGenerator = self->_cubemapGenerator;
  [v4 referenceTransform];
  v39 = v19;
  v40 = v18;
  v37 = v21;
  v38 = v20;
  [v4 extent];
  v36 = v22;
  memcpy(__dst, buf, sizeof(__dst));
  v23 = [(ARImageData *)v11 pixelBuffer];
  [(ARImageData *)v11 cameraIntrinsics];
  v34 = v25;
  v35 = v24;
  v33 = v26;
  [(ARImageData *)v11 exposureDuration];
  v28 = v27;
  [(ARImageData *)v11 exposureTargetOffset];
  v30 = v29;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __53__AREnvironmentProbeManager__requestTextureForProbe___block_invoke;
  v45[3] = &unk_1E817C960;
  v45[4] = self;
  v31 = v4;
  v46 = v31;
  LODWORD(v32) = v30;
  [(ARCubemapGenerator *)cubemapGenerator cubemapWithTransform:__dst extent:v12 lastHistogram:v23 fromMeshes:v45 cameraImage:v40 cameraTransform:v39 cameraIntrinsics:v38 cameraExposure:v37 cameraExposureOffset:v36 completionHandler:v44, v43, v42, v41, v35, v34, v33, v28, v32];
}

void __53__AREnvironmentProbeManager__requestTextureForProbe___block_invoke(uint64_t a1, void *a2, _DWORD *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5)
  {
    v6 = _ARLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 32);
      v10 = [*(a1 + 40) identifier];
      v33 = 138543874;
      v34 = v8;
      v35 = 2048;
      v36 = v9;
      v37 = 2114;
      v38 = v10;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Received texture for probe %{public}@", &v33, 0x20u);
    }

    dispatch_semaphore_wait(*(*(a1 + 32) + 88), 0xFFFFFFFFFFFFFFFFLL);
    [*(a1 + 40) setEnvironmentTexture:v5];
    v11 = [MEMORY[0x1E695DEF0] dataWithBytes:a3 + 1 length:1024];
    [*(a1 + 40) setColorHistogram:v11];

    LODWORD(v12) = *a3;
    [*(a1 + 40) setOpaquePixelPercentage:v12];
    v13 = *(*(a1 + 32) + 40);
    v14 = [*(a1 + 40) identifier];
    v15 = [v13 objectForKeyedSubscript:v14];
    LOBYTE(v13) = v15 == 0;

    if ((v13 & 1) == 0)
    {
      v16 = *(a1 + 40);
      v17 = *(*(a1 + 32) + 40);
      v18 = [v16 identifier];
      [v17 setObject:v16 forKeyedSubscript:v18];
    }

    v19 = *(*(a1 + 32) + 56);
    v20 = [*(a1 + 40) identifier];
    [v19 removeObject:v20];

    v21 = *(*(a1 + 32) + 64);
    v22 = [*(a1 + 40) identifier];
    [v21 addObject:v22];
  }

  else
  {
    dispatch_semaphore_wait(*(*(a1 + 32) + 88), 0xFFFFFFFFFFFFFFFFLL);
    v23 = *(*(a1 + 32) + 56);
    v24 = [*(a1 + 40) identifier];
    [v23 removeObject:v24];

    [*(a1 + 32) _insertIntoQueue:*(a1 + 40)];
    v25 = *(*(a1 + 32) + 40);
    v26 = [*(a1 + 40) identifier];
    v27 = [v25 objectForKeyedSubscript:v26];

    if (v27)
    {
      [*(a1 + 40) lastUpdateTimestamp];
      v29 = v28;
      v30 = *(*(a1 + 32) + 40);
      v31 = [*(a1 + 40) identifier];
      v32 = [v30 objectForKeyedSubscript:v31];
      [v32 setLastUpdateTimestamp:v29];
    }
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 88));
  kdebug_trace();
}

- (id).cxx_construct
{
  *(self + 24) = 0;
  *(self + 25) = 0;
  *(self + 26) = 0;
  return self;
}

@end