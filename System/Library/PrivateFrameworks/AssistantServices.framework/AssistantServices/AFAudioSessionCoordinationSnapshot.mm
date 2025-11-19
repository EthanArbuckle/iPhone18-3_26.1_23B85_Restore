@interface AFAudioSessionCoordinationSnapshot
+ (id)newWithBuilder:(id)a3;
- (AFAudioSessionCoordinationSnapshot)initWithBuilder:(id)a3;
- (AFAudioSessionCoordinationSnapshot)initWithCoder:(id)a3;
- (AFAudioSessionCoordinationSnapshot)initWithCurrentOrUpNextDateInterval:(id)a3 isAudioSessionActive:(BOOL)a4 localActiveAssertionContexts:(id)a5 localPendingAssertionContexts:(id)a6 remoteActiveAssertionContexts:(id)a7 remotePendingAssertionContexts:(id)a8 localDevice:(id)a9 remoteQualifiedInRangeDevices:(id)a10 remoteQualifiedOutOfRangeDevices:(id)a11 remoteDisqualifiedDevices:(id)a12;
- (AFAudioSessionCoordinationSnapshot)initWithDictionaryRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFAudioSessionCoordinationSnapshot

- (id)buildDictionaryRepresentation
{
  v103 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  currentOrUpNextDateInterval = self->_currentOrUpNextDateInterval;
  if (currentOrUpNextDateInterval)
  {
    [v3 setObject:currentOrUpNextDateInterval forKey:@"currentOrUpNextDateInterval"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAudioSessionActive];
  [v4 setObject:v6 forKey:@"isAudioSessionActive"];

  if (self->_localActiveAssertionContexts)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_localActiveAssertionContexts, "count")}];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v8 = self->_localActiveAssertionContexts;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v92 objects:v102 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v93;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v93 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v92 + 1) + 8 * i) buildDictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v92 objects:v102 count:16];
      }

      while (v10);
    }

    v14 = [v7 copy];
    [v4 setObject:v14 forKey:@"localActiveAssertionContexts"];
  }

  if (self->_localPendingAssertionContexts)
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_localPendingAssertionContexts, "count")}];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v16 = self->_localPendingAssertionContexts;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v88 objects:v101 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v89;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v89 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v88 + 1) + 8 * j) buildDictionaryRepresentation];
          [v15 addObject:v21];
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v88 objects:v101 count:16];
      }

      while (v18);
    }

    v22 = [v15 copy];
    [v4 setObject:v22 forKey:@"localPendingAssertionContexts"];
  }

  if (self->_remoteActiveAssertionContexts)
  {
    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_remoteActiveAssertionContexts, "count")}];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v24 = self->_remoteActiveAssertionContexts;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v84 objects:v100 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v85;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v85 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v84 + 1) + 8 * k) buildDictionaryRepresentation];
          [v23 addObject:v29];
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v84 objects:v100 count:16];
      }

      while (v26);
    }

    v30 = [v23 copy];
    [v4 setObject:v30 forKey:@"remoteActiveAssertionContexts"];
  }

  if (self->_remotePendingAssertionContexts)
  {
    v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_remotePendingAssertionContexts, "count")}];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v32 = self->_remotePendingAssertionContexts;
    v33 = [(NSArray *)v32 countByEnumeratingWithState:&v80 objects:v99 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v81;
      do
      {
        for (m = 0; m != v34; ++m)
        {
          if (*v81 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [*(*(&v80 + 1) + 8 * m) buildDictionaryRepresentation];
          [v31 addObject:v37];
        }

        v34 = [(NSArray *)v32 countByEnumeratingWithState:&v80 objects:v99 count:16];
      }

      while (v34);
    }

    v38 = [v31 copy];
    [v4 setObject:v38 forKey:@"remotePendingAssertionContexts"];
  }

  localDevice = self->_localDevice;
  if (localDevice)
  {
    v40 = [(AFAudioSessionCoordinationDeviceInfo *)localDevice buildDictionaryRepresentation];
    [v4 setObject:v40 forKey:@"localDevice"];
  }

  if (self->_remoteQualifiedInRangeDevices)
  {
    v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_remoteQualifiedInRangeDevices, "count")}];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v42 = self->_remoteQualifiedInRangeDevices;
    v43 = [(NSArray *)v42 countByEnumeratingWithState:&v76 objects:v98 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v77;
      do
      {
        for (n = 0; n != v44; ++n)
        {
          if (*v77 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = [*(*(&v76 + 1) + 8 * n) buildDictionaryRepresentation];
          [v41 addObject:v47];
        }

        v44 = [(NSArray *)v42 countByEnumeratingWithState:&v76 objects:v98 count:16];
      }

      while (v44);
    }

    v48 = [v41 copy];
    [v4 setObject:v48 forKey:@"remoteQualifiedInRangeDevices"];
  }

  if (self->_remoteQualifiedOutOfRangeDevices)
  {
    v49 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_remoteQualifiedOutOfRangeDevices, "count")}];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v50 = self->_remoteQualifiedOutOfRangeDevices;
    v51 = [(NSArray *)v50 countByEnumeratingWithState:&v72 objects:v97 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v73;
      do
      {
        for (ii = 0; ii != v52; ++ii)
        {
          if (*v73 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = [*(*(&v72 + 1) + 8 * ii) buildDictionaryRepresentation];
          [v49 addObject:v55];
        }

        v52 = [(NSArray *)v50 countByEnumeratingWithState:&v72 objects:v97 count:16];
      }

      while (v52);
    }

    v56 = [v49 copy];
    [v4 setObject:v56 forKey:@"remoteQualifiedOutOfRangeDevices"];
  }

  if (self->_remoteDisqualifiedDevices)
  {
    v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_remoteDisqualifiedDevices, "count")}];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v58 = self->_remoteDisqualifiedDevices;
    v59 = [(NSArray *)v58 countByEnumeratingWithState:&v68 objects:v96 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v69;
      do
      {
        for (jj = 0; jj != v60; ++jj)
        {
          if (*v69 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = [*(*(&v68 + 1) + 8 * jj) buildDictionaryRepresentation];
          [v57 addObject:v63];
        }

        v60 = [(NSArray *)v58 countByEnumeratingWithState:&v68 objects:v96 count:16];
      }

      while (v60);
    }

    v64 = [v57 copy];
    [v4 setObject:v64 forKey:@"remoteDisqualifiedDevices"];
  }

  v65 = [v4 copy];

  v66 = *MEMORY[0x1E69E9840];

  return v65;
}

- (AFAudioSessionCoordinationSnapshot)initWithDictionaryRepresentation:(id)a3
{
  v131 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"currentOrUpNextDateInterval"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v94 = v6;
    }

    else
    {
      v94 = 0;
    }

    v8 = [v5 objectForKey:@"isAudioSessionActive"];
    objc_opt_class();
    v93 = self;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v92 = [v9 BOOLValue];
    v10 = [v5 objectForKey:@"localActiveAssertionContexts"];
    v11 = 0x1E695D000uLL;
    objc_opt_class();
    v95 = v5;
    if (objc_opt_isKindOfClass())
    {
      v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
      v120 = 0u;
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      v13 = v10;
      v14 = [v13 countByEnumeratingWithState:&v120 objects:v130 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v121;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v121 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v120 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [[AFAssertionContext alloc] initWithDictionaryRepresentation:v18];

              if (v19)
              {
                [v12 addObject:v19];
              }
            }

            else
            {

              v19 = 0;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v120 objects:v130 count:16];
        }

        while (v15);
      }

      v91 = [v12 copy];
      v5 = v95;
      v11 = 0x1E695D000;
    }

    else
    {
      v91 = 0;
    }

    v20 = [v5 objectForKey:@"localPendingAssertionContexts"];
    v21 = *(v11 + 3784);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v20, "count")}];
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v23 = v20;
      v24 = [v23 countByEnumeratingWithState:&v116 objects:v129 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v117;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v117 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v116 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = [[AFAssertionContext alloc] initWithDictionaryRepresentation:v28];

              if (v29)
              {
                [v22 addObject:v29];
              }
            }

            else
            {

              v29 = 0;
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v116 objects:v129 count:16];
        }

        while (v25);
      }

      v90 = [v22 copy];
      v5 = v95;
      v11 = 0x1E695D000;
    }

    else
    {
      v90 = 0;
    }

    v30 = [v5 objectForKey:@"remoteActiveAssertionContexts"];
    v31 = *(v11 + 3784);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v30, "count")}];
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      v33 = v30;
      v34 = [v33 countByEnumeratingWithState:&v112 objects:v128 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v113;
        do
        {
          for (k = 0; k != v35; ++k)
          {
            if (*v113 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v112 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v39 = [[AFAssertionContext alloc] initWithDictionaryRepresentation:v38];

              if (v39)
              {
                [v32 addObject:v39];
              }
            }

            else
            {

              v39 = 0;
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v112 objects:v128 count:16];
        }

        while (v35);
      }

      v89 = [v32 copy];
      v5 = v95;
      v11 = 0x1E695D000;
    }

    else
    {
      v89 = 0;
    }

    v40 = [v5 objectForKey:@"remotePendingAssertionContexts"];
    v41 = *(v11 + 3784);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v40, "count")}];
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v43 = v40;
      v44 = [v43 countByEnumeratingWithState:&v108 objects:v127 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v109;
        do
        {
          for (m = 0; m != v45; ++m)
          {
            if (*v109 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = *(*(&v108 + 1) + 8 * m);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v49 = [[AFAssertionContext alloc] initWithDictionaryRepresentation:v48];

              if (v49)
              {
                [v42 addObject:v49];
              }
            }

            else
            {

              v49 = 0;
            }
          }

          v45 = [v43 countByEnumeratingWithState:&v108 objects:v127 count:16];
        }

        while (v45);
      }

      v88 = [v42 copy];
      v5 = v95;
      v11 = 0x1E695D000;
    }

    else
    {
      v88 = 0;
    }

    v50 = [v5 objectForKey:@"localDevice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v87 = [[AFAudioSessionCoordinationDeviceInfo alloc] initWithDictionaryRepresentation:v50];
    }

    else
    {
      v87 = 0;
    }

    v51 = [v5 objectForKey:@"remoteQualifiedInRangeDevices"];
    v52 = *(v11 + 3784);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v51, "count")}];
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v54 = v51;
      v55 = [v54 countByEnumeratingWithState:&v104 objects:v126 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v105;
        do
        {
          for (n = 0; n != v56; ++n)
          {
            if (*v105 != v57)
            {
              objc_enumerationMutation(v54);
            }

            v59 = *(*(&v104 + 1) + 8 * n);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v60 = [[AFAudioSessionCoordinationDeviceInfo alloc] initWithDictionaryRepresentation:v59];

              if (v60)
              {
                [v53 addObject:v60];
              }
            }

            else
            {

              v60 = 0;
            }
          }

          v56 = [v54 countByEnumeratingWithState:&v104 objects:v126 count:16];
        }

        while (v56);
      }

      v61 = [v53 copy];
      v5 = v95;
      v11 = 0x1E695D000;
    }

    else
    {
      v61 = 0;
    }

    v62 = [v5 objectForKey:@"remoteQualifiedOutOfRangeDevices"];
    v63 = *(v11 + 3784);
    objc_opt_class();
    v86 = v61;
    if (objc_opt_isKindOfClass())
    {
      v64 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v62, "count")}];
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v65 = v62;
      v66 = [v65 countByEnumeratingWithState:&v100 objects:v125 count:16];
      if (v66)
      {
        v67 = v66;
        v68 = *v101;
        do
        {
          for (ii = 0; ii != v67; ++ii)
          {
            if (*v101 != v68)
            {
              objc_enumerationMutation(v65);
            }

            v70 = *(*(&v100 + 1) + 8 * ii);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v71 = [[AFAudioSessionCoordinationDeviceInfo alloc] initWithDictionaryRepresentation:v70];

              if (v71)
              {
                [v64 addObject:v71];
              }
            }

            else
            {

              v71 = 0;
            }
          }

          v67 = [v65 countByEnumeratingWithState:&v100 objects:v125 count:16];
        }

        while (v67);
      }

      v85 = [v64 copy];
      v5 = v95;
      v11 = 0x1E695D000;
      v61 = v86;
    }

    else
    {
      v85 = 0;
    }

    v72 = [v5 objectForKey:@"remoteDisqualifiedDevices"];
    v73 = *(v11 + 3784);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v74 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v72, "count")}];
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v75 = v72;
      v76 = [v75 countByEnumeratingWithState:&v96 objects:v124 count:16];
      if (v76)
      {
        v77 = v76;
        v78 = *v97;
        do
        {
          for (jj = 0; jj != v77; ++jj)
          {
            if (*v97 != v78)
            {
              objc_enumerationMutation(v75);
            }

            v80 = *(*(&v96 + 1) + 8 * jj);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v81 = [[AFAudioSessionCoordinationDeviceInfo alloc] initWithDictionaryRepresentation:v80];

              if (v81)
              {
                [v74 addObject:v81];
              }
            }

            else
            {

              v81 = 0;
            }
          }

          v77 = [v75 countByEnumeratingWithState:&v96 objects:v124 count:16];
        }

        while (v77);
      }

      v82 = [v74 copy];
      v5 = v95;
      v61 = v86;
    }

    else
    {
      v82 = 0;
    }

    self = [(AFAudioSessionCoordinationSnapshot *)v93 initWithCurrentOrUpNextDateInterval:v94 isAudioSessionActive:v92 localActiveAssertionContexts:v91 localPendingAssertionContexts:v90 remoteActiveAssertionContexts:v89 remotePendingAssertionContexts:v88 localDevice:v87 remoteQualifiedInRangeDevices:v61 remoteQualifiedOutOfRangeDevices:v85 remoteDisqualifiedDevices:v82];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  v83 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  currentOrUpNextDateInterval = self->_currentOrUpNextDateInterval;
  v6 = a3;
  [v6 encodeObject:currentOrUpNextDateInterval forKey:@"AFAudioSessionCoordinationSnapshot::currentOrUpNextDateInterval"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAudioSessionActive];
  [v6 encodeObject:v5 forKey:@"AFAudioSessionCoordinationSnapshot::isAudioSessionActive"];

  [v6 encodeObject:self->_localActiveAssertionContexts forKey:@"AFAudioSessionCoordinationSnapshot::localActiveAssertionContexts"];
  [v6 encodeObject:self->_localPendingAssertionContexts forKey:@"AFAudioSessionCoordinationSnapshot::localPendingAssertionContexts"];
  [v6 encodeObject:self->_remoteActiveAssertionContexts forKey:@"AFAudioSessionCoordinationSnapshot::remoteActiveAssertionContexts"];
  [v6 encodeObject:self->_remotePendingAssertionContexts forKey:@"AFAudioSessionCoordinationSnapshot::remotePendingAssertionContexts"];
  [v6 encodeObject:self->_localDevice forKey:@"AFAudioSessionCoordinationSnapshot::localDevice"];
  [v6 encodeObject:self->_remoteQualifiedInRangeDevices forKey:@"AFAudioSessionCoordinationSnapshot::remoteQualifiedInRangeDevices"];
  [v6 encodeObject:self->_remoteQualifiedOutOfRangeDevices forKey:@"AFAudioSessionCoordinationSnapshot::remoteQualifiedOutOfRangeDevices"];
  [v6 encodeObject:self->_remoteDisqualifiedDevices forKey:@"AFAudioSessionCoordinationSnapshot::remoteDisqualifiedDevices"];
}

- (AFAudioSessionCoordinationSnapshot)initWithCoder:(id)a3
{
  v3 = a3;
  v37 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioSessionCoordinationSnapshot::currentOrUpNextDateInterval"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioSessionCoordinationSnapshot::isAudioSessionActive"];
  v36 = [v4 BOOLValue];

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v35 = [v3 decodeObjectOfClasses:v7 forKey:@"AFAudioSessionCoordinationSnapshot::localActiveAssertionContexts"];

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v34 = [v3 decodeObjectOfClasses:v10 forKey:@"AFAudioSessionCoordinationSnapshot::localPendingAssertionContexts"];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"AFAudioSessionCoordinationSnapshot::remoteActiveAssertionContexts"];

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [v3 decodeObjectOfClasses:v17 forKey:@"AFAudioSessionCoordinationSnapshot::remotePendingAssertionContexts"];

  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioSessionCoordinationSnapshot::localDevice"];
  v20 = MEMORY[0x1E695DFD8];
  v21 = objc_opt_class();
  v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
  v23 = [v3 decodeObjectOfClasses:v22 forKey:@"AFAudioSessionCoordinationSnapshot::remoteQualifiedInRangeDevices"];

  v24 = MEMORY[0x1E695DFD8];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  v27 = [v3 decodeObjectOfClasses:v26 forKey:@"AFAudioSessionCoordinationSnapshot::remoteQualifiedOutOfRangeDevices"];

  v28 = MEMORY[0x1E695DFD8];
  v29 = objc_opt_class();
  v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
  v31 = [v3 decodeObjectOfClasses:v30 forKey:@"AFAudioSessionCoordinationSnapshot::remoteDisqualifiedDevices"];

  v32 = [(AFAudioSessionCoordinationSnapshot *)self initWithCurrentOrUpNextDateInterval:v37 isAudioSessionActive:v36 localActiveAssertionContexts:v35 localPendingAssertionContexts:v34 remoteActiveAssertionContexts:v14 remotePendingAssertionContexts:v18 localDevice:v19 remoteQualifiedInRangeDevices:v23 remoteQualifiedOutOfRangeDevices:v27 remoteDisqualifiedDevices:v31];
  return v32;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v25 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      isAudioSessionActive = self->_isAudioSessionActive;
      if (isAudioSessionActive == [(AFAudioSessionCoordinationSnapshot *)v5 isAudioSessionActive])
      {
        v7 = [(AFAudioSessionCoordinationSnapshot *)v5 currentOrUpNextDateInterval];
        currentOrUpNextDateInterval = self->_currentOrUpNextDateInterval;
        if (currentOrUpNextDateInterval == v7 || [(NSDateInterval *)currentOrUpNextDateInterval isEqual:v7])
        {
          v9 = [(AFAudioSessionCoordinationSnapshot *)v5 localActiveAssertionContexts];
          localActiveAssertionContexts = self->_localActiveAssertionContexts;
          if (localActiveAssertionContexts == v9 || [(NSArray *)localActiveAssertionContexts isEqual:v9])
          {
            v11 = [(AFAudioSessionCoordinationSnapshot *)v5 localPendingAssertionContexts];
            localPendingAssertionContexts = self->_localPendingAssertionContexts;
            if (localPendingAssertionContexts == v11 || [(NSArray *)localPendingAssertionContexts isEqual:v11])
            {
              v13 = [(AFAudioSessionCoordinationSnapshot *)v5 remoteActiveAssertionContexts];
              remoteActiveAssertionContexts = self->_remoteActiveAssertionContexts;
              if (remoteActiveAssertionContexts == v13 || [(NSArray *)remoteActiveAssertionContexts isEqual:v13])
              {
                v15 = [(AFAudioSessionCoordinationSnapshot *)v5 remotePendingAssertionContexts];
                remotePendingAssertionContexts = self->_remotePendingAssertionContexts;
                if (remotePendingAssertionContexts == v15 || [(NSArray *)remotePendingAssertionContexts isEqual:v15])
                {
                  v17 = [(AFAudioSessionCoordinationSnapshot *)v5 localDevice];
                  localDevice = self->_localDevice;
                  if (localDevice == v17 || [(AFAudioSessionCoordinationDeviceInfo *)localDevice isEqual:v17])
                  {
                    v19 = [(AFAudioSessionCoordinationSnapshot *)v5 remoteQualifiedInRangeDevices];
                    remoteQualifiedInRangeDevices = self->_remoteQualifiedInRangeDevices;
                    if (remoteQualifiedInRangeDevices == v19 || [(NSArray *)remoteQualifiedInRangeDevices isEqual:v19])
                    {
                      v28 = v17;
                      v21 = [(AFAudioSessionCoordinationSnapshot *)v5 remoteQualifiedOutOfRangeDevices];
                      remoteQualifiedOutOfRangeDevices = self->_remoteQualifiedOutOfRangeDevices;
                      if (remoteQualifiedOutOfRangeDevices == v21 || [(NSArray *)remoteQualifiedOutOfRangeDevices isEqual:v21])
                      {
                        v23 = [(AFAudioSessionCoordinationSnapshot *)v5 remoteDisqualifiedDevices];
                        remoteDisqualifiedDevices = self->_remoteDisqualifiedDevices;
                        v25 = remoteDisqualifiedDevices == v23 || [(NSArray *)remoteDisqualifiedDevices isEqual:v23];

                        v19 = v27;
                      }

                      else
                      {
                        v25 = 0;
                      }

                      v17 = v28;
                    }

                    else
                    {
                      v25 = 0;
                    }
                  }

                  else
                  {
                    v25 = 0;
                  }
                }

                else
                {
                  v25 = 0;
                }
              }

              else
              {
                v25 = 0;
              }
            }

            else
            {
              v25 = 0;
            }
          }

          else
          {
            v25 = 0;
          }
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

- (unint64_t)hash
{
  v3 = [(NSDateInterval *)self->_currentOrUpNextDateInterval hash];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAudioSessionActive];
  v5 = [v4 hash];
  v6 = v3 ^ [(NSArray *)self->_localActiveAssertionContexts hash];
  v7 = v5 ^ v6 ^ [(NSArray *)self->_localPendingAssertionContexts hash];
  v8 = [(NSArray *)self->_remoteActiveAssertionContexts hash];
  v9 = v8 ^ [(NSArray *)self->_remotePendingAssertionContexts hash];
  v10 = v9 ^ [(AFAudioSessionCoordinationDeviceInfo *)self->_localDevice hash];
  v11 = v7 ^ v10 ^ [(NSArray *)self->_remoteQualifiedInRangeDevices hash];
  v12 = [(NSArray *)self->_remoteQualifiedOutOfRangeDevices hash];
  v13 = v12 ^ [(NSArray *)self->_remoteDisqualifiedDevices hash];

  return v11 ^ v13;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10.receiver = self;
  v10.super_class = AFAudioSessionCoordinationSnapshot;
  v5 = [(AFAudioSessionCoordinationSnapshot *)&v10 description];
  v6 = v5;
  if (self->_isAudioSessionActive)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v4 initWithFormat:@"%@ {currentOrUpNextDateInterval = %@, isAudioSessionActive = %@, localActiveAssertionContexts = %@, localPendingAssertionContexts = %@, remoteActiveAssertionContexts = %@, remotePendingAssertionContexts = %@, localDevice = %@, remoteQualifiedInRangeDevices = %@, remoteQualifiedOutOfRangeDevices = %@, remoteDisqualifiedDevices = %@}", v5, self->_currentOrUpNextDateInterval, v7, self->_localActiveAssertionContexts, self->_localPendingAssertionContexts, self->_remoteActiveAssertionContexts, self->_remotePendingAssertionContexts, self->_localDevice, self->_remoteQualifiedInRangeDevices, self->_remoteQualifiedOutOfRangeDevices, self->_remoteDisqualifiedDevices];

  return v8;
}

- (AFAudioSessionCoordinationSnapshot)initWithCurrentOrUpNextDateInterval:(id)a3 isAudioSessionActive:(BOOL)a4 localActiveAssertionContexts:(id)a5 localPendingAssertionContexts:(id)a6 remoteActiveAssertionContexts:(id)a7 remotePendingAssertionContexts:(id)a8 localDevice:(id)a9 remoteQualifiedInRangeDevices:(id)a10 remoteQualifiedOutOfRangeDevices:(id)a11 remoteDisqualifiedDevices:(id)a12
{
  v35 = a3;
  v34 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __316__AFAudioSessionCoordinationSnapshot_initWithCurrentOrUpNextDateInterval_isAudioSessionActive_localActiveAssertionContexts_localPendingAssertionContexts_remoteActiveAssertionContexts_remotePendingAssertionContexts_localDevice_remoteQualifiedInRangeDevices_remoteQualifiedOutOfRangeDevices_remoteDisqualifiedDevices___block_invoke;
  v38[3] = &unk_1E7348090;
  v48 = a4;
  v39 = v35;
  v40 = v34;
  v41 = v16;
  v42 = v17;
  v43 = v18;
  v44 = v19;
  v45 = v20;
  v46 = v21;
  v47 = v22;
  v23 = v22;
  v24 = v21;
  v25 = v20;
  v26 = v19;
  v27 = v18;
  v28 = v17;
  v29 = v16;
  v30 = v34;
  v31 = v35;
  v32 = [(AFAudioSessionCoordinationSnapshot *)self initWithBuilder:v38];

  return v32;
}

void __316__AFAudioSessionCoordinationSnapshot_initWithCurrentOrUpNextDateInterval_isAudioSessionActive_localActiveAssertionContexts_localPendingAssertionContexts_remoteActiveAssertionContexts_remotePendingAssertionContexts_localDevice_remoteQualifiedInRangeDevices_remoteQualifiedOutOfRangeDevices_remoteDisqualifiedDevices___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setCurrentOrUpNextDateInterval:v3];
  [v4 setIsAudioSessionActive:*(a1 + 104)];
  [v4 setLocalActiveAssertionContexts:*(a1 + 40)];
  [v4 setLocalPendingAssertionContexts:*(a1 + 48)];
  [v4 setRemoteActiveAssertionContexts:*(a1 + 56)];
  [v4 setRemotePendingAssertionContexts:*(a1 + 64)];
  [v4 setLocalDevice:*(a1 + 72)];
  [v4 setRemoteQualifiedInRangeDevices:*(a1 + 80)];
  [v4 setRemoteQualifiedOutOfRangeDevices:*(a1 + 88)];
  [v4 setRemoteDisqualifiedDevices:*(a1 + 96)];
}

- (AFAudioSessionCoordinationSnapshot)initWithBuilder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = AFAudioSessionCoordinationSnapshot;
  v5 = [(AFAudioSessionCoordinationSnapshot *)&v36 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFAudioSessionCoordinationSnapshotMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFAudioSessionCoordinationSnapshotMutation *)v7 isDirty])
    {
      v8 = [(_AFAudioSessionCoordinationSnapshotMutation *)v7 getCurrentOrUpNextDateInterval];
      v9 = [v8 copy];
      currentOrUpNextDateInterval = v6->_currentOrUpNextDateInterval;
      v6->_currentOrUpNextDateInterval = v9;

      v6->_isAudioSessionActive = [(_AFAudioSessionCoordinationSnapshotMutation *)v7 getIsAudioSessionActive];
      v11 = [(_AFAudioSessionCoordinationSnapshotMutation *)v7 getLocalActiveAssertionContexts];
      v12 = [v11 copy];
      localActiveAssertionContexts = v6->_localActiveAssertionContexts;
      v6->_localActiveAssertionContexts = v12;

      v14 = [(_AFAudioSessionCoordinationSnapshotMutation *)v7 getLocalPendingAssertionContexts];
      v15 = [v14 copy];
      localPendingAssertionContexts = v6->_localPendingAssertionContexts;
      v6->_localPendingAssertionContexts = v15;

      v17 = [(_AFAudioSessionCoordinationSnapshotMutation *)v7 getRemoteActiveAssertionContexts];
      v18 = [v17 copy];
      remoteActiveAssertionContexts = v6->_remoteActiveAssertionContexts;
      v6->_remoteActiveAssertionContexts = v18;

      v20 = [(_AFAudioSessionCoordinationSnapshotMutation *)v7 getRemotePendingAssertionContexts];
      v21 = [v20 copy];
      remotePendingAssertionContexts = v6->_remotePendingAssertionContexts;
      v6->_remotePendingAssertionContexts = v21;

      v23 = [(_AFAudioSessionCoordinationSnapshotMutation *)v7 getLocalDevice];
      v24 = [v23 copy];
      localDevice = v6->_localDevice;
      v6->_localDevice = v24;

      v26 = [(_AFAudioSessionCoordinationSnapshotMutation *)v7 getRemoteQualifiedInRangeDevices];
      v27 = [v26 copy];
      remoteQualifiedInRangeDevices = v6->_remoteQualifiedInRangeDevices;
      v6->_remoteQualifiedInRangeDevices = v27;

      v29 = [(_AFAudioSessionCoordinationSnapshotMutation *)v7 getRemoteQualifiedOutOfRangeDevices];
      v30 = [v29 copy];
      remoteQualifiedOutOfRangeDevices = v6->_remoteQualifiedOutOfRangeDevices;
      v6->_remoteQualifiedOutOfRangeDevices = v30;

      v32 = [(_AFAudioSessionCoordinationSnapshotMutation *)v7 getRemoteDisqualifiedDevices];
      v33 = [v32 copy];
      remoteDisqualifiedDevices = v6->_remoteDisqualifiedDevices;
      v6->_remoteDisqualifiedDevices = v33;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFAudioSessionCoordinationSnapshotMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFAudioSessionCoordinationSnapshotMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFAudioSessionCoordinationSnapshot);
      v7 = [(_AFAudioSessionCoordinationSnapshotMutation *)v5 getCurrentOrUpNextDateInterval];
      v8 = [v7 copy];
      currentOrUpNextDateInterval = v6->_currentOrUpNextDateInterval;
      v6->_currentOrUpNextDateInterval = v8;

      v6->_isAudioSessionActive = [(_AFAudioSessionCoordinationSnapshotMutation *)v5 getIsAudioSessionActive];
      v10 = [(_AFAudioSessionCoordinationSnapshotMutation *)v5 getLocalActiveAssertionContexts];
      v11 = [v10 copy];
      localActiveAssertionContexts = v6->_localActiveAssertionContexts;
      v6->_localActiveAssertionContexts = v11;

      v13 = [(_AFAudioSessionCoordinationSnapshotMutation *)v5 getLocalPendingAssertionContexts];
      v14 = [v13 copy];
      localPendingAssertionContexts = v6->_localPendingAssertionContexts;
      v6->_localPendingAssertionContexts = v14;

      v16 = [(_AFAudioSessionCoordinationSnapshotMutation *)v5 getRemoteActiveAssertionContexts];
      v17 = [v16 copy];
      remoteActiveAssertionContexts = v6->_remoteActiveAssertionContexts;
      v6->_remoteActiveAssertionContexts = v17;

      v19 = [(_AFAudioSessionCoordinationSnapshotMutation *)v5 getRemotePendingAssertionContexts];
      v20 = [v19 copy];
      remotePendingAssertionContexts = v6->_remotePendingAssertionContexts;
      v6->_remotePendingAssertionContexts = v20;

      v22 = [(_AFAudioSessionCoordinationSnapshotMutation *)v5 getLocalDevice];
      v23 = [v22 copy];
      localDevice = v6->_localDevice;
      v6->_localDevice = v23;

      v25 = [(_AFAudioSessionCoordinationSnapshotMutation *)v5 getRemoteQualifiedInRangeDevices];
      v26 = [v25 copy];
      remoteQualifiedInRangeDevices = v6->_remoteQualifiedInRangeDevices;
      v6->_remoteQualifiedInRangeDevices = v26;

      v28 = [(_AFAudioSessionCoordinationSnapshotMutation *)v5 getRemoteQualifiedOutOfRangeDevices];
      v29 = [v28 copy];
      remoteQualifiedOutOfRangeDevices = v6->_remoteQualifiedOutOfRangeDevices;
      v6->_remoteQualifiedOutOfRangeDevices = v29;

      v31 = [(_AFAudioSessionCoordinationSnapshotMutation *)v5 getRemoteDisqualifiedDevices];
      v32 = [v31 copy];
      remoteDisqualifiedDevices = v6->_remoteDisqualifiedDevices;
      v6->_remoteDisqualifiedDevices = v32;
    }

    else
    {
      v6 = [(AFAudioSessionCoordinationSnapshot *)self copy];
    }
  }

  else
  {
    v6 = [(AFAudioSessionCoordinationSnapshot *)self copy];
  }

  return v6;
}

@end