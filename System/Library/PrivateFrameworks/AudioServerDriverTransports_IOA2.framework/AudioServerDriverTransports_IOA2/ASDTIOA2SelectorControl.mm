@interface ASDTIOA2SelectorControl
- (ASDTIOA2Device)ioa2Device;
- (BOOL)doSetValues:(const unsigned int *)a3 withCount:(unint64_t)a4;
- (BOOL)setSelectedValues:(const unsigned int *)a3 withCount:(unint64_t)a4;
- (BOOL)synchronizeWithRegistryDictionary:(id)a3;
- (NSArray)propertySelectorInfo;
- (void)dealloc;
- (void)pushValue:(unsigned int)a3;
- (void)pushValues:(id)a3;
@end

@implementation ASDTIOA2SelectorControl

- (void)dealloc
{
  [(ASDControl *)self asdtRemoveControlProperties];
  v3.receiver = self;
  v3.super_class = ASDTIOA2SelectorControl;
  [(ASDTIOA2SelectorControl *)&v3 dealloc];
}

- (NSArray)propertySelectorInfo
{
  v14[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"selector";
  v12[1] = @"dataType";
  v13[0] = &unk_285357930;
  v13[1] = &unk_285357948;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v14[0] = v2;
  v10[0] = @"selector";
  v10[1] = @"dataType";
  v11[0] = &unk_285357960;
  v11[1] = &unk_285357948;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v14[1] = v3;
  v8[0] = @"selector";
  v8[1] = @"dataType";
  v9[0] = &unk_285357978;
  v9[1] = &unk_285357990;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v14[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)synchronizeWithRegistryDictionary:(id)a3
{
  v92[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  std::recursive_mutex::lock(&self->_lock);
  v54 = self;
  if (!v4)
  {
    v52 = 0;
    v9 = ASDTIOA2LogType();
    v53 = 0;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2416BA000, v9, OS_LOG_TYPE_DEFAULT, "Error: Couldn't synchronize with registry", buf, 2u);
    }

LABEL_70:

    v4 = v52;
    self = v54;
    goto LABEL_71;
  }

  v5 = [v4 objectForKeyedSubscript:@"property selectors"];
  v6 = [(ASDControl *)self asdtAddControlProperties:v5];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"multi-selector"];
    v52 = v4;
    self->_multiSelector = [v7 BOOLValue];

    v53 = v4 != 0;
    if (self->_multiSelector)
    {
      v8 = [v4 objectForKeyedSubscript:@"value"];
    }

    else
    {
      v10 = [v4 objectForKeyedSubscript:@"value"];
      v92[0] = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:1];

      v8 = v11;
    }

    v59 = [(ASDSelectorControl *)self values];
    v55 = v8;
    v51 = [v4 objectForKeyedSubscript:@"selectors"];
    v57 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v51, "count")}];
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    obj = v51;
    v12 = [obj countByEnumeratingWithState:&v81 objects:v91 count:16];
    if (v12)
    {
      v13 = *v82;
      v56 = *v82;
      do
      {
        v60 = v12;
        for (i = 0; i != v60; ++i)
        {
          if (*v82 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v81 + 1) + 8 * i);
          v16 = [v15 objectForKeyedSubscript:@"value"];
          v17 = [v15 objectForKeyedSubscript:@"name"];
          v18 = [v15 objectForKeyedSubscript:@"kind"];
          v19 = [v16 unsignedIntValue];
          if (v19)
          {
            v20 = v17 == 0;
          }

          else
          {
            v20 = 1;
          }

          if (!v20)
          {
            if ([v59 count])
            {
              v79 = 0uLL;
              v80 = 0uLL;
              v77 = 0uLL;
              v78 = 0uLL;
              v21 = v59;
              v22 = [v21 countByEnumeratingWithState:&v77 objects:v90 count:16];
              if (v22)
              {
                v23 = *v78;
                while (2)
                {
                  for (j = 0; j != v22; ++j)
                  {
                    if (*v78 != v23)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v25 = *(*(&v77 + 1) + 8 * j);
                    if ([v25 value] == v19)
                    {
                      v13 = v56;
                      v22 = [v25 selected];
                      goto LABEL_39;
                    }
                  }

                  v22 = [v21 countByEnumeratingWithState:&v77 objects:v90 count:16];
                  if (v22)
                  {
                    continue;
                  }

                  break;
                }

                v13 = v56;
              }
            }

            else
            {
              v75 = 0uLL;
              v76 = 0uLL;
              v73 = 0uLL;
              v74 = 0uLL;
              v21 = v55;
              v22 = [v21 countByEnumeratingWithState:&v73 objects:v89 count:16];
              if (v22)
              {
                v26 = *v74;
                while (2)
                {
                  for (k = 0; k != v22; ++k)
                  {
                    if (*v74 != v26)
                    {
                      objc_enumerationMutation(v21);
                    }

                    if ([*(*(&v73 + 1) + 8 * k) unsignedIntValue] == v19)
                    {
                      v22 = 1;
                      goto LABEL_39;
                    }
                  }

                  v22 = [v21 countByEnumeratingWithState:&v73 objects:v89 count:16];
                  if (v22)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

LABEL_39:

            v28 = [MEMORY[0x277CEFB70] withValue:v19 name:v17 andKind:objc_msgSend(v18 selected:{"unsignedIntValue"), v22}];
            [v57 addObject:v28];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v81 objects:v91 count:16];
      }

      while (v12);
    }

    v29 = v54;
    v30 = [v57 count];
    if (v30 == [v59 count])
    {
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v31 = v57;
      v32 = [v31 countByEnumeratingWithState:&v69 objects:v88 count:16];
      if (v32)
      {
        v33 = 0;
        v34 = *v70;
        while (2)
        {
          for (m = 0; m != v32; ++m)
          {
            if (*v70 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v69 + 1) + 8 * m);
            if (v33 >= [v59 count] || (objc_msgSend(v59, "objectAtIndexedSubscript:", v33), v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "value"), v39 = v38 == objc_msgSend(v36, "value"), v37, !v39))
            {

              v29 = v54;
              goto LABEL_54;
            }

            ++v33;
          }

          v32 = [v31 countByEnumeratingWithState:&v69 objects:v88 count:16];
          if (v32)
          {
            continue;
          }

          break;
        }
      }

      v40 = v54;
    }

    else
    {
LABEL_54:
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v41 = v59;
      v42 = [v41 countByEnumeratingWithState:&v65 objects:v87 count:16];
      if (v42)
      {
        v43 = *v66;
        do
        {
          for (n = 0; n != v42; ++n)
          {
            if (*v66 != v43)
            {
              objc_enumerationMutation(v41);
            }

            [(ASDSelectorControl *)v29 removeValue:*(*(&v65 + 1) + 8 * n)];
          }

          v42 = [v41 countByEnumeratingWithState:&v65 objects:v87 count:16];
        }

        while (v42);
      }

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v45 = v57;
      v46 = [v45 countByEnumeratingWithState:&v61 objects:v86 count:16];
      if (v46)
      {
        v47 = *v62;
        do
        {
          for (ii = 0; ii != v46; ++ii)
          {
            if (*v62 != v47)
            {
              objc_enumerationMutation(v45);
            }

            [(ASDSelectorControl *)v54 addValue:*(*(&v61 + 1) + 8 * ii)];
          }

          v46 = [v45 countByEnumeratingWithState:&v61 objects:v86 count:16];
        }

        while (v46);
      }

      v40 = v54;
      [(ASDControl *)v54 asdtSendControlPropertyChangeNotificationAtIndex:1];
    }

    [(ASDTIOA2SelectorControl *)v40 pushValues:v55];

    v9 = v55;
    goto LABEL_70;
  }

  v53 = 0;
LABEL_71:
  std::recursive_mutex::unlock(&self->_lock);

  v49 = *MEMORY[0x277D85DE8];
  return v53;
}

- (BOOL)doSetValues:(const unsigned int *)a3 withCount:(unint64_t)a4
{
  v39 = *MEMORY[0x277D85DE8];
  std::recursive_mutex::lock(&self->_lock);
  v26.receiver = self;
  v26.super_class = ASDTIOA2SelectorControl;
  if ([(ASDSelectorControl *)&v26 setSelectedValues:a3 withCount:a4])
  {
    v7 = NSStringFromSelector(sel_selectedValue);
    [(ASDTIOA2SelectorControl *)self willChangeValueForKey:v7];

    [(ASDControl *)self asdtSendControlPropertyChangeNotificationAtIndex:0];
    v8 = NSStringFromSelector(sel_selectedValue);
    [(ASDTIOA2SelectorControl *)self didChangeValueForKey:v8];

    if (self->_multiSelector)
    {
      v9 = ASDTIOA2LogType();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        WeakRetained = objc_loadWeakRetained(&self->_ioa2Device);
        v11 = [WeakRetained deviceUID];
        if ([(ASDTIOA2SelectorControl *)self objectClass]>> 29 && [(ASDTIOA2SelectorControl *)self objectClass]>> 24 <= 0x7E)
        {
          v12 = [(ASDTIOA2SelectorControl *)self objectClass]>> 24;
        }

        else
        {
          v12 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE00000) != 0 && ([(ASDTIOA2SelectorControl *)self objectClass]>> 16) <= 0x7Eu)
        {
          v16 = ([(ASDTIOA2SelectorControl *)self objectClass]>> 16);
        }

        else
        {
          v16 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE000) != 0 && ([(ASDTIOA2SelectorControl *)self objectClass]>> 8) <= 0x7Eu)
        {
          v18 = ([(ASDTIOA2SelectorControl *)self objectClass]>> 8);
        }

        else
        {
          v18 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE0) != 0 && [(ASDTIOA2SelectorControl *)self objectClass]<= 0x7Eu)
        {
          v20 = [(ASDTIOA2SelectorControl *)self objectClass];
        }

        else
        {
          v20 = 32;
        }

        v22 = [(ASDSelectorControl *)self values];
        *buf = 138413570;
        v28 = v11;
        v29 = 1024;
        v30 = v12;
        v31 = 1024;
        v32 = v16;
        v33 = 1024;
        v34 = v18;
        v35 = 1024;
        v36 = v20;
        v37 = 2112;
        v38 = v22;
        _os_log_impl(&dword_2416BA000, v9, OS_LOG_TYPE_DEFAULT, "%@: Control '%c%c%c%c' changed to: %@", buf, 0x2Eu);
      }
    }

    else
    {
      v9 = ASDTIOA2LogType();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_loadWeakRetained(&self->_ioa2Device);
        v14 = [v13 deviceUID];
        if ([(ASDTIOA2SelectorControl *)self objectClass]>> 29 && [(ASDTIOA2SelectorControl *)self objectClass]>> 24 <= 0x7E)
        {
          v15 = [(ASDTIOA2SelectorControl *)self objectClass]>> 24;
        }

        else
        {
          v15 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE00000) != 0 && ([(ASDTIOA2SelectorControl *)self objectClass]>> 16) <= 0x7Eu)
        {
          v17 = ([(ASDTIOA2SelectorControl *)self objectClass]>> 16);
        }

        else
        {
          v17 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE000) != 0 && ([(ASDTIOA2SelectorControl *)self objectClass]>> 8) <= 0x7Eu)
        {
          v19 = ([(ASDTIOA2SelectorControl *)self objectClass]>> 8);
        }

        else
        {
          v19 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE0) != 0 && [(ASDTIOA2SelectorControl *)self objectClass]<= 0x7Eu)
        {
          v21 = [(ASDTIOA2SelectorControl *)self objectClass];
        }

        else
        {
          v21 = 32;
        }

        v23 = [(ASDSelectorControl *)self selectedValue];
        *buf = 138413570;
        v28 = v14;
        v29 = 1024;
        v30 = v15;
        v31 = 1024;
        v32 = v17;
        v33 = 1024;
        v34 = v19;
        v35 = 1024;
        v36 = v21;
        v37 = 1024;
        LODWORD(v38) = v23;
        _os_log_impl(&dword_2416BA000, v9, OS_LOG_TYPE_DEFAULT, "%@: Control '%c%c%c%c' changed to: %u", buf, 0x2Au);
      }
    }
  }

  std::recursive_mutex::unlock(&self->_lock);
  v24 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)setSelectedValues:(const unsigned int *)a3 withCount:(unint64_t)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = [(ASDSelectorControl *)self values];
  v8 = [v7 count];

  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v32 = v9;
  std::vector<unsigned int>::vector[abi:ne200100](__p, v9);
  if (self->_multiSelector)
  {
    if (v9 < a4)
    {
      v10 = ASDTIOA2LogType();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        WeakRetained = objc_loadWeakRetained(&self->_ioa2Device);
        v20 = [WeakRetained deviceUID];
        if ([(ASDTIOA2SelectorControl *)self objectClass]>> 29 && [(ASDTIOA2SelectorControl *)self objectClass]>> 24 <= 0x7E)
        {
          v21 = [(ASDTIOA2SelectorControl *)self objectClass]>> 24;
        }

        else
        {
          v21 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE00000) != 0 && ([(ASDTIOA2SelectorControl *)self objectClass]>> 16) <= 0x7Eu)
        {
          v25 = ([(ASDTIOA2SelectorControl *)self objectClass]>> 16);
        }

        else
        {
          v25 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE000) != 0 && ([(ASDTIOA2SelectorControl *)self objectClass]>> 8) <= 0x7Eu)
        {
          v27 = ([(ASDTIOA2SelectorControl *)self objectClass]>> 8);
        }

        else
        {
          v27 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE0) != 0 && [(ASDTIOA2SelectorControl *)self objectClass]<= 0x7Eu)
        {
          v29 = [(ASDTIOA2SelectorControl *)self objectClass];
        }

        else
        {
          v29 = 32;
        }

        *buf = 138413826;
        v34 = v20;
        v35 = 1024;
        v36 = v21;
        v37 = 1024;
        v38 = v25;
        v39 = 1024;
        v40 = v27;
        v41 = 1024;
        v42 = v29;
        v43 = 2048;
        v44 = a4;
        v45 = 2048;
        v46 = v9;
        _os_log_error_impl(&dword_2416BA000, v10, OS_LOG_TYPE_ERROR, "%@: selector control '%c%c%c%c': bad number of items: %zu (max %zu)", buf, 0x38u);
      }

      goto LABEL_15;
    }

    v13 = objc_loadWeakRetained(&self->_ioa2Device);
    v14 = [v13 _setControlValues:a3 withCount:a4 resultValues:__p[0] count:&v32 forControl:self->_userClientID];

    if (v14)
    {
LABEL_12:
      v15 = [ASDTIOA2SelectorControl doSetValues:"doSetValues:withCount:" withCount:?];
      goto LABEL_16;
    }
  }

  else
  {
    if (a4 != 1)
    {
      v16 = ASDTIOA2LogType();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_loadWeakRetained(&self->_ioa2Device);
        v23 = [v22 deviceUID];
        if ([(ASDTIOA2SelectorControl *)self objectClass]>> 29 && [(ASDTIOA2SelectorControl *)self objectClass]>> 24 <= 0x7E)
        {
          v24 = [(ASDTIOA2SelectorControl *)self objectClass]>> 24;
        }

        else
        {
          v24 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE00000) != 0 && ([(ASDTIOA2SelectorControl *)self objectClass]>> 16) <= 0x7Eu)
        {
          v26 = ([(ASDTIOA2SelectorControl *)self objectClass]>> 16);
        }

        else
        {
          v26 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE000) != 0 && ([(ASDTIOA2SelectorControl *)self objectClass]>> 8) <= 0x7Eu)
        {
          v28 = ([(ASDTIOA2SelectorControl *)self objectClass]>> 8);
        }

        else
        {
          v28 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE0) != 0 && [(ASDTIOA2SelectorControl *)self objectClass]<= 0x7Eu)
        {
          v30 = [(ASDTIOA2SelectorControl *)self objectClass];
        }

        else
        {
          v30 = 32;
        }

        *buf = 138413570;
        v34 = v23;
        v35 = 1024;
        v36 = v24;
        v37 = 1024;
        v38 = v26;
        v39 = 1024;
        v40 = v28;
        v41 = 1024;
        v42 = v30;
        v43 = 2048;
        v44 = a4;
        _os_log_error_impl(&dword_2416BA000, v16, OS_LOG_TYPE_ERROR, "%@: selector control '%c%c%c%c': bad number of items: %zu (require 1)", buf, 0x2Eu);
      }

      goto LABEL_15;
    }

    *buf = *a3;
    v11 = objc_loadWeakRetained(&self->_ioa2Device);
    v12 = [v11 _setControlValue:buf forControl:self->_userClientID];

    if (v12)
    {
      *__p[0] = *buf;
      goto LABEL_12;
    }
  }

LABEL_15:
  v15 = 0;
LABEL_16:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)pushValue:(unsigned int)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (!a3 || self->_multiSelector)
  {
    WeakRetained = objc_loadWeakRetained(&self->_ioa2Device);
    v7 = [WeakRetained _controlDictionaryForControl:self->_userClientID];

    v5 = [v7 objectForKeyedSubscript:@"value"];
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    v9[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  [(ASDTIOA2SelectorControl *)self pushValues:v5];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)pushValues:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  std::vector<unsigned int>::vector[abi:ne200100](__p, [v4 count]);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      v10 = v6;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v13 + 1) + 8 * v9) unsignedIntValue];
        v6 = v10 + 1;
        *(__p[0] + v10) = v11;
        ++v9;
        ++v10;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  [(ASDTIOA2SelectorControl *)self doSetValues:__p[0] withCount:v6];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (ASDTIOA2Device)ioa2Device
{
  WeakRetained = objc_loadWeakRetained(&self->_ioa2Device);

  return WeakRetained;
}

@end