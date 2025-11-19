@interface CADSPGraph
- (BOOL)getLatency:(double *)a3 error:(id *)a4;
- (BOOL)getParameter:(float *)a3 forID:(unsigned int)a4 error:(id *)a5;
- (BOOL)getParameterDirection:(unsigned int *)a3 forID:(unsigned int)a4 error:(id *)a5;
- (BOOL)getPropertyData:(void *)a3 size:(unsigned int *)a4 forID:(unsigned int)a5 error:(id *)a6;
- (BOOL)getPropertyDirection:(unsigned int *)a3 forID:(unsigned int)a4 error:(id *)a5;
- (BOOL)getPropertyInfo:(CADSPPropertyInfo *)a3 forID:(unsigned int)a4 error:(id *)a5;
- (BOOL)getTailTime:(double *)a3 error:(id *)a4;
- (BOOL)initialize:(id *)a3;
- (BOOL)loadStrip:(id)a3 type:(unsigned int)a4 withResourcePath:(id)a5 error:(id *)a6;
- (BOOL)setParameter:(float)a3 forID:(unsigned int)a4 error:(id *)a5;
- (CADSPGraph)initWithModel:(id)a3 error:(id *)a4;
- (NSArray)boxes;
- (NSArray)eventListeners;
- (NSArray)subsets;
- (id).cxx_construct;
- (id)boxForName:(id)a3;
- (id)createRemoteProcessingBlockHost:(id *)a3;
- (id)saveStrip:(unsigned int)a3 error:(id *)a4;
- (id)subsetForName:(id)a3;
- (void)addEventListener:(id)a3;
- (void)removeAllEventListeners;
- (void)removeEventListener:(id)a3;
@end

@implementation CADSPGraph

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (id)subsetForName:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(CADSPGraph *)self subsets];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 model];
        v11 = [v10 name];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSArray)subsets
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  subsets = v2->_subsets;
  if (!subsets)
  {
    v39 = [MEMORY[0x1E695DF70] arrayWithCapacity:(*(v2->_graph.__ptr_ + 128) - *(v2->_graph.__ptr_ + 127)) >> 3];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = [(CADSPGraphModel *)v2->_model subsets];
    v4 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v4)
    {
      v40 = *v47;
      do
      {
        v5 = 0;
        v41 = v4;
        do
        {
          if (*v47 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v46 + 1) + 8 * v5);
          ptr = v2->_graph.__ptr_;
          v8 = [v6 name];
          v9 = v8;
          std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);
          v10 = *(ptr + 127);
          v11 = *(ptr + 128);
          if (v10 == v11)
          {
LABEL_22:
            v14 = 0;
          }

          else
          {
            if ((v45 & 0x80u) == 0)
            {
              v12 = v45;
            }

            else
            {
              v12 = __p[1];
            }

            if ((v45 & 0x80u) == 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            while (1)
            {
              v14 = *v10;
              v15 = *(*v10 + 31);
              v16 = v15;
              if ((v15 & 0x80u) != 0)
              {
                v15 = *(*v10 + 16);
              }

              if (v15 == v12)
              {
                v17 = v16 >= 0 ? v14 + 1 : v14[1];
                if (!memcmp(v17, v13, v12))
                {
                  break;
                }
              }

              v10 += 8;
              if (v10 == v11)
              {
                goto LABEL_22;
              }
            }
          }

          cntrl = v2->_graph.__cntrl_;
          if (cntrl)
          {
            atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v45 < 0)
          {
            operator delete(__p[0]);
          }

          if (v14)
          {
            v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:v14[7]];
            for (i = v14[6]; i; i = *i)
            {
              v21 = i[2];
              v22 = objc_alloc(MEMORY[0x1E696AEC0]);
              v25 = *(v21 + 40);
              v24 = v21 + 40;
              v23 = v25;
              v26 = *(v24 + 23);
              if (v26 >= 0)
              {
                v27 = v24;
              }

              else
              {
                v27 = v23;
              }

              if (v26 >= 0)
              {
                v28 = *(v24 + 23);
              }

              else
              {
                v28 = *(v24 + 8);
              }

              v29 = [v22 initWithBytes:v27 length:v28 encoding:4];
              v30 = [(CADSPGraph *)v2 boxForName:v29];
              if (v30)
              {
                [v19 addObject:v30];
              }
            }

            v31 = [CADSPSubset alloc];
            v42 = v14;
            v43 = cntrl;
            if (cntrl)
            {
              atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v32 = [(CADSPSubset *)v31 initWithSubset:&v42 model:v6 boxes:v19];
            [v39 addObject:v32];

            if (v43)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v43);
            }
          }

          if (cntrl)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
          }

          ++v5;
        }

        while (v5 != v41);
        v4 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v4);
    }

    v33 = [v39 copy];
    v34 = v2->_subsets;
    v2->_subsets = v33;

    subsets = v2->_subsets;
  }

  v35 = subsets;
  objc_sync_exit(v2);

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

- (id)boxForName:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(CADSPGraph *)self boxes];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 model];
        v11 = [v10 name];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSArray)boxes
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  boxes = v2->_boxes;
  if (!boxes)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(v2->_graph.__ptr_ + 5)];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = [(CADSPGraphModel *)v2->_model boxes];
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      v7 = *v28;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v28 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v27 + 1) + 8 * i);
          ptr = v2->_graph.__ptr_;
          v11 = [v9 name];
          v12 = v11;
          std::string::basic_string[abi:ne200100]<0>(__p, [v11 UTF8String]);
          v13 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(ptr + 117, __p);
          if (v13)
          {
            v14 = v13[5];
          }

          else
          {
            v14 = 0;
          }

          cntrl = v2->_graph.__cntrl_;
          if (cntrl)
          {
            atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v26 < 0)
          {
            operator delete(__p[0]);
          }

          if (v14)
          {
            v16 = [CADSPBox alloc];
            v23 = v14;
            v24 = cntrl;
            v17 = [(CADSPBox *)v16 initWithBox:&v23 model:v9];
            [v4 addObject:v17];

            cntrl = v24;
          }

          if (cntrl)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v6);
    }

    v18 = [v4 copy];
    v19 = v2->_boxes;
    v2->_boxes = v18;

    boxes = v2->_boxes;
  }

  v20 = boxes;
  objc_sync_exit(v2);

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (CADSPGraph)initWithModel:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v11.receiver = v6;
  v11.super_class = CADSPGraph;
  v7 = [(CADSPGraph *)&v11 init];

  if (v7)
  {
    AudioDSPGraph::BoxRegistry::BoxRegistry(v10);
  }

  v8 = 0;

  return v8;
}

- (BOOL)getTailTime:(double *)a3 error:(id *)a4
{
  TailTime = CADSPGraphGetTailTime(self, a3);
  v6 = TailTime;
  if (a4 && !TailTime)
  {
    *a4 = [CADSPError createWithRealTimeError:0];
  }

  return v6 != 0;
}

- (id)saveStrip:(unsigned int)a3 error:(id *)a4
{
  if (a3)
  {
    v4 = 0;
    if (a4)
    {
      *a4 = [CADSPError errorWithCode:1853060464 descriptionFormat:@"graph cannot save property strip(s)"];
    }
  }

  else
  {
    ptr = self->_graph.__ptr_;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    std::vector<AudioDSPGraph::Box *>::reserve(&v12, *(ptr + 5));
    for (i = *(ptr + 4); i; i = *i)
    {
      v15 = i[2];
      std::vector<AudioDSPGraph::Box *>::push_back[abi:ne200100](&v12, &v15);
    }

    v7 = v12;
    v8 = 126 - 2 * __clz(v13 - v12);
    if (v13 == v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,false>(v12, v13, v9, 1);
    AudioDSPGraph::stripDictFromBoxes(&v15, &v12);
    if (v7)
    {
      operator delete(v7);
    }

    v10 = v15;
    v4 = v10;
    if (v10)
    {
      CFRelease(v10);
    }
  }

  return v4;
}

- (BOOL)loadStrip:(id)a3 type:(unsigned int)a4 withResourcePath:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  if (a4 == 1)
  {
    AudioDSPGraph::Graph::setPropertyStrip(self->_graph.__ptr_, v10, v11);
LABEL_6:
    v6 = 1;
    goto LABEL_7;
  }

  if (!a4)
  {
    v12 = AudioDSPGraph::Graph::setAUStrip(self->_graph.__ptr_, v10);
    if (v12)
    {
      std::string::basic_string[abi:ne200100]<0>(v14, "failed to set parameter strip");
      AudioDSPGraph::ThrowException(v12, v14, off_1E8334670);
    }

    goto LABEL_6;
  }

LABEL_7:

  return v6 & 1;
}

- (id)createRemoteProcessingBlockHost:(id *)a3
{
  v167[1] = *MEMORY[0x1E69E9840];
  if (objc_opt_class())
  {
    v3 = ((*(self->_graph.__ptr_ + 48) - *(self->_graph.__ptr_ + 47)) >> 3);
    v159 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        v5 = objc_alloc(MEMORY[0x1E69C6E08]);
        v6 = *(self->_graph.__ptr_ + 47);
        if (i >= (*(self->_graph.__ptr_ + 48) - v6) >> 3)
        {
          v7 = 0;
        }

        else
        {
          v7 = *(v6 + 8 * i);
        }

        StreamDescription = AudioDSPGraph::Boxes::GraphInput::getStreamDescription(v7);
        v9 = *(StreamDescription + 32);
        v10 = *(StreamDescription + 16);
        outData = *StreamDescription;
        v163 = v10;
        v164 = v9;
        v11 = [v5 initWithFormat:&outData];
        [v159 addObject:v11];
      }
    }

    v12 = ((*(self->_graph.__ptr_ + 51) - *(self->_graph.__ptr_ + 50)) >> 3);
    v158 = [MEMORY[0x1E695DF70] arrayWithCapacity:v12];
    if (v12)
    {
      for (j = 0; j != v12; ++j)
      {
        v14 = objc_alloc(MEMORY[0x1E69C6E08]);
        v15 = *(self->_graph.__ptr_ + 50);
        if (j >= (*(self->_graph.__ptr_ + 51) - v15) >> 3)
        {
          v16 = 0;
        }

        else
        {
          v16 = *(v15 + 8 * j);
        }

        v17 = AudioDSPGraph::Boxes::GraphOutput::getStreamDescription(v16);
        v18 = *(v17 + 32);
        v19 = *(v17 + 16);
        outData = *v17;
        v163 = v19;
        v164 = v18;
        v20 = [v14 initWithFormat:&outData];
        [v158 addObject:v20];
      }
    }

    v21 = objc_alloc(MEMORY[0x1E69C6DE0]);
    v22 = [(CADSPGraph *)self model];
    v23 = [v22 name];
    v24 = [v21 initWithName:v23 inputs:v159 outputs:v158];

    if (v24)
    {
      if (v3)
      {
        v25 = 0;
        v26 = MEMORY[0x1E695E0F0];
        do
        {
          v27 = objc_alloc(MEMORY[0x1E69C6DE8]);
          v28 = *(self->_graph.__ptr_ + 47);
          if (v25 >= (*(self->_graph.__ptr_ + 48) - v28) >> 3)
          {
            v29 = 0;
          }

          else
          {
            v29 = *(v28 + 8 * v25);
          }

          v30 = (v29 + 40);
          if (*(v29 + 63) < 0)
          {
            v30 = *v30;
          }

          v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v30];
          v32 = [v159 objectAtIndexedSubscript:v25];
          v167[0] = v32;
          v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v167 count:1];
          v34 = [v27 initWithName:v31 inputs:v26 outputs:v33];
          [v24 addItem:v34];

          ++v25;
        }

        while (v3 != v25);
      }

      if (v12)
      {
        v35 = 0;
        v36 = MEMORY[0x1E695E0F0];
        do
        {
          v37 = objc_alloc(MEMORY[0x1E69C6DE8]);
          v38 = *(self->_graph.__ptr_ + 50);
          if (v35 >= (*(self->_graph.__ptr_ + 51) - v38) >> 3)
          {
            v39 = 0;
          }

          else
          {
            v39 = *(v38 + 8 * v35);
          }

          v40 = (v39 + 40);
          if (*(v39 + 63) < 0)
          {
            v40 = *v40;
          }

          v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v40];
          v42 = [v158 objectAtIndexedSubscript:v35];
          v166 = v42;
          v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v166 count:1];
          v44 = [v37 initWithName:v41 inputs:v43 outputs:v36];
          [v24 addItem:v44];

          ++v35;
        }

        while (v12 != v35);
      }

      ptr = self->_graph.__ptr_;
      v46 = *(ptr + 4);
      if (v46)
      {
        while (1)
        {
          v47 = (*(*v46[2] + 224))(v46[2]);
          if (v47)
          {
            break;
          }

          if (!(*(*v46[2] + 232))(v46[2]) && !(*(*v46[2] + 240))(v46[2]))
          {
            v54 = ((v46[2][10] - v46[2][9]) >> 5);
            v55 = [MEMORY[0x1E695DF70] arrayWithCapacity:v54];
            if (v54)
            {
              v56 = 0;
              v57 = 16;
              do
              {
                v58 = objc_alloc(MEMORY[0x1E69C6E08]);
                v59 = v46[2];
                v60 = v59[9];
                v61 = (v59[10] - v60) >> 5;
                if (v61 <= v56)
                {
                  v149 = v59 + 5;
                  if (*(v59 + 63) < 0)
                  {
                    v149 = *v149;
                  }

                  caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", &outData, v149, v61, v56);
                  AudioDSPGraph::ThrowException(1919837985, &outData, off_1E8337C60);
                }

                v62 = *(*(v60 + v57) + 120);
                v63 = *(v62 + 4);
                v64 = v62[1];
                outData = *v62;
                v163 = v64;
                v164 = v63;
                v65 = [v58 initWithFormat:&outData];
                [v55 addObject:v65];

                ++v56;
                v57 += 32;
              }

              while (v54 != v56);
            }

            v66 = ((v46[2][13] - v46[2][12]) >> 5);
            v67 = [MEMORY[0x1E695DF70] arrayWithCapacity:v66];
            if (v66)
            {
              v68 = 0;
              v69 = 16;
              do
              {
                v70 = objc_alloc(MEMORY[0x1E69C6E08]);
                v71 = v46[2];
                v72 = v71[12];
                v73 = (v71[13] - v72) >> 5;
                if (v73 <= v68)
                {
                  v150 = v71 + 5;
                  if (*(v71 + 63) < 0)
                  {
                    v150 = *v150;
                  }

                  caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", &outData, v150, v73, v68);
                  AudioDSPGraph::ThrowException(1919837985, &outData, off_1E8337C78);
                }

                v74 = *(*(v72 + v69) + 120);
                v75 = *(v74 + 4);
                v76 = v74[1];
                outData = *v74;
                v163 = v76;
                v164 = v75;
                v77 = [v70 initWithFormat:&outData];
                [v67 addObject:v77];

                ++v68;
                v69 += 32;
              }

              while (v66 != v68);
            }

            v78 = v46[2];
            v79 = objc_alloc(MEMORY[0x1E696AEC0]);
            v82 = v78[5];
            v81 = v78 + 5;
            v80 = v82;
            v83 = *(v81 + 23);
            if (v83 >= 0)
            {
              v84 = v81;
            }

            else
            {
              v84 = v80;
            }

            if (v83 >= 0)
            {
              v85 = *(v81 + 23);
            }

            else
            {
              v85 = v81[1];
            }

            v155 = [v79 initWithBytes:v84 length:v85 encoding:4];
            v50 = [objc_alloc(MEMORY[0x1E69C6DE8]) initWithName:v155 inputs:v55 outputs:v67];
            v86 = [(CADSPGraph *)self boxForName:v155];
            [v50 setDelegate:v86];

            v87 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
            v88 = [v87 executableURL];
            v89 = [v88 URLByStandardizingPath];

            v90 = objc_opt_class();
            v91 = NSStringFromClass(v90);
            v165 = v89;
            v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v165 count:1];
            [v50 loadPropertyMarshallerWithClassName:v91 bundleLocationURLs:v92 error:0];

            goto LABEL_61;
          }

          v50 = 0;
LABEL_62:

          v46 = *v46;
          if (!v46)
          {
            ptr = self->_graph.__ptr_;
            goto LABEL_64;
          }
        }

        v48 = v47;
        v49 = *(v47 + 840);
        v50 = [objc_alloc(MEMORY[0x1E69C6DD0]) initWithAudioUnit:v49];
        (*(*v48 + 216))(&outData, v48);
        if (DWORD1(outData) == 1685287015)
        {
          *&outData = 0;
          ioDataSize = 8;
          if (!AudioUnitGetProperty(v49, 0x686F7062u, 0, 0, &outData, &ioDataSize) && outData != 0)
          {
            v52 = [MEMORY[0x1E69C6E00] sharedInstance];
            v53 = outData;
            [v52 addHost:outData toItem:v50];
          }
        }

LABEL_61:
        [v24 addItem:v50];
        goto LABEL_62;
      }

LABEL_64:
      v93 = *(ptr + 9);
      if (v93)
      {
        do
        {
          v94 = v93[2];
          v95 = *(v94 + 8);
          if (v95)
          {
            for (k = *(v94 + 32); k; k = *k)
            {
              v97 = *(v95 + 8);
              v98 = (v97 + 40);
              if (*(v97 + 63) < 0)
              {
                v98 = *v98;
              }

              v99 = k[2];
              v100 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v98];
              v101 = [v24 itemForName:v100];

              v102 = *(v99 + 8);
              v103 = (v102 + 40);
              if (*(v102 + 63) < 0)
              {
                v103 = *v103;
              }

              v104 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v103];
              v105 = [v24 itemForName:v104];

              [v24 addWireFrom:v101 terminal:*(v95 + 24) to:v105 terminal:*(v99 + 24)];
            }
          }

          v93 = *v93;
        }

        while (v93);
        ptr = self->_graph.__ptr_;
      }

      v106 = *(ptr + 75);
      if (v106)
      {
        do
        {
          v107 = v106[5];
          v108 = v106[6];
          while (v107 != v108)
          {
            v109 = (*v107 + 40);
            if (*(*v107 + 63) < 0)
            {
              v109 = *v109;
            }

            v110 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v109];
            v111 = [v24 itemForName:v110];

            v112 = v107[2];
            v113 = v107[3];
            v114 = *(v106 + 4);
            if (*(v106 + 36) == 1)
            {
              LODWORD(v153) = 0;
              [v24 addWireFrom:v111 parameter:v112 scope:v113 element:v107[4] toHostParameter:v114 scope:2 element:v153];
            }

            else
            {
              LODWORD(v153) = v107[4];
              [v24 addWireFromHostParameter:v114 scope:1 element:0 to:v111 parameter:v112 scope:v113 element:v153];
            }

            v107 += 6;
          }

          v106 = *v106;
        }

        while (v106);
        ptr = self->_graph.__ptr_;
      }

      v115 = *(ptr + 67);
      v156 = *(ptr + 68);
      if (v115 != v156)
      {
        do
        {
          v116 = (*v115 + 40);
          if (*(*v115 + 63) < 0)
          {
            v116 = *v116;
          }

          v117 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v116];
          v118 = [v24 itemForName:v117];
          v119 = *(v115 + 24);
          v120 = (v119 + 40);
          if (*(v119 + 63) < 0)
          {
            v120 = *v120;
          }

          v121 = *(v115 + 8);
          v122 = *(v115 + 12);
          v123 = *(v115 + 16);
          v124 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v120];
          v125 = [v24 itemForName:v124];
          v126 = *(v115 + 36);
          [v24 addWireFrom:v118 parameter:v121 scope:v122 element:v123 to:v125 parameter:*(v115 + 32) scope:*(v115 + 36) element:?];

          v115 += 56;
        }

        while (v115 != v156);
        ptr = self->_graph.__ptr_;
      }

      v127 = *(ptr + 80);
      if (v127)
      {
        do
        {
          v128 = v127[9];
          v129 = v127[10];
          while (v128 != v129)
          {
            v130 = (*v128 + 40);
            if (*(*v128 + 63) < 0)
            {
              v130 = *v130;
            }

            v131 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v130];
            v132 = [v24 itemForName:v131];

            v133 = v128[2];
            v134 = v128[3];
            v135 = *(v127 + 4);
            if (*(v127 + 64) == 1)
            {
              LODWORD(v153) = 0;
              [v24 addWireFrom:v132 property:v133 scope:v134 element:v128[4] toHostProperty:v135 scope:2 element:v153];
            }

            else
            {
              LODWORD(v153) = v128[4];
              [v24 addWireFromHostProperty:v135 scope:1 element:0 to:v132 property:v133 scope:v134 element:v153];
            }

            v128 += 6;
          }

          v127 = *v127;
        }

        while (v127);
        ptr = self->_graph.__ptr_;
      }

      v136 = *(ptr + 70);
      v137 = *(ptr + 71);
      v157 = v137;
      while (v136 != v137)
      {
        v138 = (*v136 + 40);
        if (*(*v136 + 63) < 0)
        {
          v138 = *v138;
        }

        v139 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v138];
        v140 = [v24 itemForName:v139];
        v141 = *(v136 + 24);
        v142 = (v141 + 40);
        if (*(v141 + 63) < 0)
        {
          v142 = *v142;
        }

        v143 = *(v136 + 8);
        v144 = *(v136 + 12);
        v145 = *(v136 + 16);
        v146 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v142];
        v147 = [v24 itemForName:v146];
        v148 = *(v136 + 36);
        [v24 addWireFrom:v140 property:v143 scope:v144 element:v145 to:v147 property:*(v136 + 32) scope:*(v136 + 36) element:?];

        v136 += 56;
        v137 = v157;
      }

      [v24 setDelegate:self];
    }

    else if (a3)
    {
      *a3 = [[CADSPError alloc] initWithCode:1970170734];
    }
  }

  else
  {
    v24 = 0;
    if (a3)
    {
      *a3 = [[CADSPError alloc] initWithCode:1853060464];
    }
  }

  v151 = *MEMORY[0x1E69E9840];

  return v24;
}

- (BOOL)getPropertyData:(void *)a3 size:(unsigned int *)a4 forID:(unsigned int)a5 error:(id *)a6
{
  Property = CADSPGraphGetProperty(self, a5, a3, a4);
  v8 = Property;
  if (a6 && !Property)
  {
    *a6 = [CADSPError createWithRealTimeError:0];
  }

  return v8 != 0;
}

- (BOOL)getPropertyInfo:(CADSPPropertyInfo *)a3 forID:(unsigned int)a4 error:(id *)a5
{
  PropertyInfo = CADSPGraphGetPropertyInfo(self, a4, a3);
  v7 = PropertyInfo;
  if (a5 && !PropertyInfo)
  {
    *a5 = [CADSPError createWithRealTimeError:0];
  }

  return v7 != 0;
}

- (BOOL)getPropertyDirection:(unsigned int *)a3 forID:(unsigned int)a4 error:(id *)a5
{
  PropertyDirection = CADSPGraphGetPropertyDirection(self, a4, a3);
  v7 = PropertyDirection;
  if (a5 && !PropertyDirection)
  {
    *a5 = [CADSPError createWithRealTimeError:0];
  }

  return v7 != 0;
}

- (BOOL)setParameter:(float)a3 forID:(unsigned int)a4 error:(id *)a5
{
  v9 = 0;
  v6 = CADSPGraphSetParameter(self, a4, &v9, a3);
  v7 = v6;
  if (a5 && !v6)
  {
    *a5 = [CADSPError createWithRealTimeError:v9];
  }

  return v7 != 0;
}

- (BOOL)getParameter:(float *)a3 forID:(unsigned int)a4 error:(id *)a5
{
  v9 = 0;
  Parameter = CADSPGraphGetParameter(self, a4, a3, &v9);
  v7 = Parameter;
  if (a5 && !Parameter)
  {
    *a5 = [CADSPError createWithRealTimeError:v9];
  }

  return v7 != 0;
}

- (BOOL)getParameterDirection:(unsigned int *)a3 forID:(unsigned int)a4 error:(id *)a5
{
  v9 = 0;
  ParameterDirection = CADSPGraphGetParameterDirection(self, a4, a3, &v9);
  v7 = ParameterDirection;
  if (a5 && !ParameterDirection)
  {
    *a5 = [CADSPError createWithRealTimeError:v9];
  }

  return v7 != 0;
}

- (BOOL)getLatency:(double *)a3 error:(id *)a4
{
  Latency = CADSPGraphGetLatency(self, a3);
  v6 = Latency;
  if (a4 && !Latency)
  {
    *a4 = [CADSPError createWithRealTimeError:0];
  }

  return v6 != 0;
}

- (BOOL)initialize:(id *)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = self->_graph.__ptr_;
  if ((*(v3 + 921) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(buf, "graph is not configured. configure the graph before initializing");
    AudioDSPGraph::ThrowException(1667655457, buf, off_1E8335DC0);
  }

  if ((*(v3 + 922) & 1) == 0)
  {
    AudioDSPGraph::Graph::setGraphPropertiesInitialValues(*(v3 + 80));
    AudioDSPGraph::Graph::setGraphParameterInitialValues(*(v3 + 75));
    *(v3 + 107) = 0;
    *(v3 + 55) = 0u;
    v5 = *(v3 + 44);
    v4 = *(v3 + 45);
    ptr = v3;
    if (v5 != v4)
    {
      v69 = *(v3 + 45);
      do
      {
        v6 = *v5;
        *(v6 + 256) = 0;
        *(v6 + 288) = 0;
        v7 = *(v6 + 268);
        v8 = v7;
        if (v7 == 1)
        {
          v8 = *(v6 + 272);
        }

        {
          AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
        }

        v9 = os_signpost_id_make_with_pointer(AudioDSPGraph::getLog(void)::gLog, v6);
        v11 = *(v6 + 224);
        v10 = *(v6 + 232);
        if (v11 != v10)
        {
          v12 = v9;
          v13 = v9 - 1;
          do
          {
            v14 = *v11;
            (*(**v11 + 120))(*v11, v8);
            if (v7 >= 2)
            {
              (*(*v14 + 128))(v14, 1);
            }

            {
              AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
            }

            if (v13 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v15 = AudioDSPGraph::getLog(void)::gLog;
              if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
              {
                v16 = v14 + 40;
                if (v14[63] < 0)
                {
                  v16 = *v16;
                }

                *buf = 136315138;
                *&buf[4] = v16;
                _os_signpost_emit_with_name_impl(&dword_1C91AE000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Box::initialize", "%s", buf, 0xCu);
              }
            }

            (*(*v14 + 560))(v14);
            {
              AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
            }

            if (v13 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v17 = AudioDSPGraph::getLog(void)::gLog;
              if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
              {
                v18 = v14 + 40;
                if (v14[63] < 0)
                {
                  v18 = *v18;
                }

                *buf = 136315138;
                *&buf[4] = v18;
                _os_signpost_emit_with_name_impl(&dword_1C91AE000, v17, OS_SIGNPOST_INTERVAL_END, v12, "Box::initialize", "%s", buf, 0xCu);
              }
            }

            ++v11;
          }

          while (v11 != v10);
        }

        ++v5;
      }

      while (v5 != v69);
      v5 = *(ptr + 44);
      v4 = *(ptr + 45);
    }

    while (v5 != v4)
    {
      v19 = *(*v5 + 224);
      v20 = *(*v5 + 232);
      while (v19 != v20)
      {
        (*(**v19 + 592))(*v19);
        ++v19;
      }

      ++v5;
    }

    v21 = ptr;
    v22 = *(ptr + 840);
    if ((v22 & 4) != 0)
    {
      v23 = 0uLL;
      memset(buf, 0, sizeof(buf));
      v24 = *(ptr + 4);
      if (v24)
      {
        do
        {
          v72 = v24[2];
          std::vector<AudioDSPGraph::Box *>::push_back[abi:ne200100](buf, &v72);
          v24 = *v24;
        }

        while (v24);
        v23 = *buf;
      }

      v25 = v23;
      if (v23 != *(&v23 + 1))
      {
        v26 = v23;
        do
        {
          v27 = *v26;
          AudioDSPGraph::Box::upstreamLatencyInTicks(*v26);
          (*(*v27 + 368))(v27);
          ++v26;
        }

        while (v26 != *(&v25 + 1));
        if (v25 != *(&v25 + 1))
        {
          v28 = v25;
          do
          {
            v29 = *v28;
            (*(**v28 + 360))(*v28);
            if (*(v29 + 752) == 1)
            {
              *(v29 + 752) = 0;
            }

            ++v28;
          }

          while (v28 != *(&v25 + 1));
        }
      }

      if (v25)
      {
        operator delete(v25);
      }

      v21 = ptr;
      v22 = *(ptr + 840);
    }

    if ((v22 & 2) != 0)
    {
      v30 = *(v21 + 923);
    }

    else
    {
      v30 = 0;
    }

    *(v21 + 924) = v30 & 1;
    {
      AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
    }

    v31 = os_signpost_id_make_with_pointer(AudioDSPGraph::getLog(void)::gLog, v21);
    {
      AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
    }

    if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v32 = AudioDSPGraph::getLog(void)::gLog;
      if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
      {
        if (*(ptr + 528) == 1)
        {
          v33 = (ptr + 504);
          if (*(ptr + 527) < 0)
          {
            v33 = *v33;
          }
        }

        else
        {
          v33 = 0;
        }

        *buf = 136315138;
        *&buf[4] = v33;
        _os_signpost_emit_with_name_impl(&dword_1C91AE000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v31, "Graph::initializeBuffers", "%s", buf, 0xCu);
      }
    }

    *buf = ptr;
    *&buf[8] = 0u;
    v74 = 0u;
    v75 = 1065353216;
    memset(v76, 0, sizeof(v76));
    v77 = 1065353216;
    v34 = *(ptr + 44);
    v35 = *(ptr + 45);
    while (v34 != v35)
    {
      v36 = *(*v34 + 224);
      v37 = *(*v34 + 232);
      while (v36 != v37)
      {
        v38 = *v36;
        if ((*(**v36 + 8))(*v36))
        {
          AudioDSPGraph::BufferColorist::consumeInputs(buf, v38);
          AudioDSPGraph::BufferColorist::allocOutputs(buf, v38[12], v38[13]);
        }

        else
        {
          AudioDSPGraph::BufferColorist::allocOutputs(buf, v38[12], v38[13]);
          AudioDSPGraph::BufferColorist::consumeInputs(buf, v38);
        }

        ++v36;
      }

      v34 += 8;
    }

    std::__hash_table<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>>>::~__hash_table(v76);
    std::__hash_table<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>>>::~__hash_table(&buf[8]);
    for (i = *(ptr + 9); i; i = *i)
    {
      v40 = i[2];
      v41 = v40[15];
      v42 = v41[10];
      if (v42 == 1)
      {
        v42 = *(*(*(*(v40[4] + 16) + 8) + 24) + 272);
      }

      v43 = v40[7];
      v44 = v41[2];
      v45 = v41[4];
      v46 = 2 * v42 * v45;
      v47 = v45 * v42;
      if (v44 == 1819304813)
      {
        v45 = v47;
      }

      if (v44 == 1718773105)
      {
        v45 = v46;
      }

      if (v45 <= *(v43 + 100))
      {
        v45 = *(v43 + 100);
      }

      *(v43 + 100) = v45;
    }

    if ((*(ptr + 924) & 1) == 0)
    {
      v50 = *(ptr + 36);
      v51 = *(ptr + 37);
      while (v50 != v51)
      {
        v52 = *v50;
        AudioDSPGraph::SimpleABL::free((*v50 + 80));
        AudioDSPGraph::SimpleABL::alloc((v52 + 80), *(v52 + 96), *(v52 + 100), *(v52 + 108));
        ++v50;
      }
    }

    {
      AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
    }

    if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v48 = AudioDSPGraph::getLog(void)::gLog;
      if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
      {
        if (*(ptr + 528) == 1)
        {
          v49 = (ptr + 504);
          if (*(ptr + 527) < 0)
          {
            v49 = *v49;
          }
        }

        else
        {
          v49 = 0;
        }

        *buf = 136315138;
        *&buf[4] = v49;
        _os_signpost_emit_with_name_impl(&dword_1C91AE000, v48, OS_SIGNPOST_INTERVAL_END, v31, "Graph::initializeBuffers", "%s", buf, 0xCu);
      }
    }

    v53 = *(ptr + 132);
    v54 = *(ptr + 133);
    v71 = v54;
    while (v53 != v54)
    {
      v55 = *(v53 + 32);
      v56 = *(v53 + 40);
      while (v55 != v56)
      {
        PropertyInfo = AudioDSPGraph::Graph::getPropertyInfo(ptr, *v55);
        v58 = PropertyInfo;
        if ((v59 & 1) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(buf, "graph bridge property size could not be queried");
          AudioDSPGraph::ThrowException(v58, buf, off_1E8336300);
        }

        v60 = PropertyInfo;
        v62 = *(v55 + 8);
        v61 = *(v55 + 16);
        v63 = v58 >= &v61[-v62];
        v64 = v58 - &v61[-v62];
        if (v64 != 0 && v63)
        {
          v65 = *(v55 + 24);
          if (v65 - v61 < v64)
          {
            operator new();
          }

          v66 = &v61[v64];
          bzero(v61, v64);
          *(v55 + 16) = v66;
        }

        else if (!v63)
        {
          *(v55 + 16) = v62 + v60;
        }

        v55 += 32;
      }

      v53 += 56;
      v54 = v71;
    }

    *(ptr + 922) = 1;
  }

  result = 1;
  v68 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)removeAllEventListeners
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v2->_eventListeners;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        ptr = v2->_graph.__ptr_;
        v9 = v7[1];
        v10 = v7[2];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12[0] = v9;
        v12[1] = v10;
        AudioDSPGraph::Graph::removeEventHandler(ptr, v12);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  [(NSMutableArray *)v2->_eventListeners removeAllObjects];
  objc_sync_exit(v2);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeEventListener:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if ([(NSMutableArray *)v4->_eventListeners containsObject:v8])
  {
    ptr = v4->_graph.__ptr_;
    v6 = v8[1];
    v7 = v8[2];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9[0] = v6;
    v9[1] = v7;
    AudioDSPGraph::Graph::removeEventHandler(ptr, v9);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    [(NSMutableArray *)v4->_eventListeners removeObject:v8];
  }

  objc_sync_exit(v4);
}

- (void)addEventListener:(id)a3
{
  v14 = a3;
  v4 = self;
  objc_sync_enter(v4);
  eventListeners = v4->_eventListeners;
  if (eventListeners)
  {
    if (([(NSMutableArray *)eventListeners containsObject:v14]& 1) == 0)
    {
      ptr = v4->_graph.__ptr_;
      v8 = v14[1];
      v7 = v14[2];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      *&v15 = v8;
      *(&v15 + 1) = v7;
      AudioDSPGraph::Graph::addEventHandler(ptr, &v15);
      if (*(&v15 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
      }

      [(NSMutableArray *)v4->_eventListeners addObject:v14];
    }
  }

  else
  {
    v9 = v4->_graph.__ptr_;
    v11 = v14[1];
    v10 = v14[2];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    *&v16 = v11;
    *(&v16 + 1) = v10;
    AudioDSPGraph::Graph::addEventHandler(v9, &v16);
    if (*(&v16 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
    }

    v12 = [MEMORY[0x1E695DF70] arrayWithObject:v14];
    v13 = v4->_eventListeners;
    v4->_eventListeners = v12;
  }

  objc_sync_exit(v4);
}

- (NSArray)eventListeners
{
  v2 = self;
  objc_sync_enter(v2);
  eventListeners = v2->_eventListeners;
  if (eventListeners)
  {
    v4 = [(NSMutableArray *)eventListeners copy];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  objc_sync_exit(v2);

  return v4;
}

@end