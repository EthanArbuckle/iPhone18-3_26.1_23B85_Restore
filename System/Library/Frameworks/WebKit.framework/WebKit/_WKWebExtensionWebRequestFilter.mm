@interface _WKWebExtensionWebRequestFilter
- (BOOL)matchesRequestForResourceOfType:(int64_t)type URL:(id)l tabID:(double)d windowID:(double)iD;
- (_WKWebExtensionWebRequestFilter)initWithDictionary:(id)dictionary outErrorMessage:(id *)message;
- (id).cxx_construct;
- (id)_initializeWithDictionary:(id)dictionary;
@end

@implementation _WKWebExtensionWebRequestFilter

- (_WKWebExtensionWebRequestFilter)initWithDictionary:(id)dictionary outErrorMessage:(id *)message
{
  v16[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _WKWebExtensionWebRequestFilter;
  v7 = [(_WKWebExtensionWebRequestFilter *)&v12 init];
  if (v7)
  {
    if ((_MergedGlobals_41 & 1) == 0)
    {
      v16[0] = @"urls";
      qword_1ED6417F0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      _MergedGlobals_41 = 1;
    }

    if ((byte_1ED6417E9 & 1) == 0)
    {
      v14[0] = @"urls";
      v13 = objc_opt_class();
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
      v15[0] = v11;
      v14[1] = @"types";
      v15[1] = objc_opt_class();
      v14[2] = @"tabId";
      v15[2] = objc_opt_class();
      v14[3] = @"windowId";
      v15[3] = objc_opt_class();
      qword_1ED6417F8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];

      byte_1ED6417E9 = 1;
    }

    if (WebKit::validateDictionary(dictionaryCopy, 0, qword_1ED6417F0, qword_1ED6417F8, message) && ([(_WKWebExtensionWebRequestFilter *)v7 _initializeWithDictionary:dictionaryCopy], v8 = objc_claimAutoreleasedReturnValue(), (*message = v8) == 0))
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    *message = @"Runtime failure.";
  }

  return v9;
}

- (id)_initializeWithDictionary:(id)dictionary
{
  __y[16] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v3 = [dictionaryCopy objectForKeyedSubscript:@"urls"];
  if ([v3 count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v5 = v3;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v67 objects:__y count:16];
    if (v6)
    {
      v7 = 0;
      v8 = *v68;
      while (2)
      {
        v9 = 0;
        v10 = v7;
        do
        {
          if (*v68 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v67 + 1) + 8 * v9);
          v12 = [WKWebExtensionMatchPattern alloc];
          v74 = v10;
          v13 = [(WKWebExtensionMatchPattern *)v12 initWithString:v11 error:&v74];
          v7 = v74;

          if (!v13)
          {
            MEMORY[0x19EB02040](&v71, @"urls");
            MEMORY[0x19EB02040](&v66, @"'%@' is an invalid match pattern. %@");
            localizedDescription = [v7 localizedDescription];
            WebKit::toErrorString(MEMORY[0x1E696EBA0], &v71, &v72, v11);
            v16 = v72;
            if (v72)
            {
              atomic_fetch_add_explicit(v72, 2u, memory_order_relaxed);
              MEMORY[0x19EB00B70](&v73, v16);
              if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v16, v17);
              }
            }

            else
            {
              v73 = &stru_1F1147748;
            }

            v14 = v73;
            v73 = 0;
            v18 = v14;
            v19 = v73;
            v73 = 0;

            v21 = v72;
            v72 = 0;
            if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v21, v20);
            }

            v23 = v66;
            v66 = 0;
            if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v23, v22);
            }

            v24 = v71;
            v71 = 0;
            if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v24, v22);
            }

            v5 = v4;
            v4 = 0;
            goto LABEL_27;
          }

          [(NSArray *)v4 addObject:v13];

          ++v9;
          v10 = v7;
        }

        while (v6 != v9);
        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v67 objects:__y count:16];
        if (v6)
        {
          continue;
        }

        break;
      }

      v14 = 0;
    }

    else
    {
      v14 = 0;
      v7 = 0;
    }

LABEL_27:
  }

  else
  {
    v14 = 0;
    v4 = 0;
  }

  v25 = v14;
  urlPatterns = self->_urlPatterns;
  self->_urlPatterns = v4;

  if (!v25)
  {
    v27 = [dictionaryCopy objectForKeyedSubscript:@"types"];
    if ([v27 count])
    {
      v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v29 = v27;
      v30 = [(NSSet *)v29 countByEnumeratingWithState:&v67 objects:__y count:16];
      if (v30)
      {
        v31 = *v68;
        while (2)
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v68 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = *(*(&v67 + 1) + 8 * i);
            v34 = [&unk_1F1184D78 objectForKeyedSubscript:v33];
            if (!v34)
            {
              MEMORY[0x19EB02040](&v72, @"types");
              MEMORY[0x19EB02040](&v71, @"'%@' is an unknown resource type");
              WebKit::toErrorString(MEMORY[0x1E696EBA0], &v72, &v73, v33);
              v36 = v73;
              if (v73)
              {
                atomic_fetch_add_explicit(v73, 2u, memory_order_relaxed);
                MEMORY[0x19EB00B70](&v74, v36);
                if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v36, v37);
                }
              }

              else
              {
                v74 = &stru_1F1147748;
              }

              v35 = v74;
              v74 = 0;
              v38 = v35;
              v39 = v74;
              v74 = 0;

              v41 = v73;
              v73 = 0;
              if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v41, v40);
              }

              v42 = v71;
              v71 = 0;
              if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v42, v40);
              }

              v43 = v72;
              v72 = 0;
              if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v43, v40);
              }

              v29 = v28;
              v28 = 0;
              goto LABEL_54;
            }

            [(NSSet *)v28 addObject:v34];
          }

          v30 = [(NSSet *)v29 countByEnumeratingWithState:&v67 objects:__y count:16];
          if (v30)
          {
            continue;
          }

          break;
        }
      }

      v35 = 0;
LABEL_54:
    }

    else
    {
      v35 = 0;
      v28 = 0;
    }

    v25 = v35;
    types = self->_types;
    self->_types = v28;

    if (!v25)
    {
      v45 = [dictionaryCopy objectForKeyedSubscript:@"tabId"];
      v46 = v45;
      if (v45)
      {
        [v45 doubleValue];
        v48 = v47;
        if (v47 == -1.0)
        {
          v49 = 1;
          v50 = -256;
LABEL_59:
          v51 = 254;
          goto LABEL_61;
        }

        v49 = 0;
        v50 = 0;
        if ((v47 < 0.0 || ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v47 - 1) > 0xFFFFFFFFFFFFELL)
        {
          v51 = 0;
        }

        else
        {
          v51 = 0;
          if (v47 < 1.84467441e19)
          {
            if (modf(v47, __y) == 0.0)
            {
              if (v48 - 1 > 0xFFFFFFFFFFFFFFFDLL)
              {
                v50 = -256;
                v49 = 1;
                goto LABEL_59;
              }

              v50 = v48 & 0xFFFFFFFFFFFFFF00;
              v51 = v48;
              v49 = 1;
            }

            else
            {
              v49 = 0;
              v51 = 0;
              v50 = 0;
            }
          }
        }
      }

      else
      {
        v50 = 0;
        v49 = 0;
        v51 = 0;
      }

LABEL_61:

      self->_tabID.var0.__val_.m_identifier = v51 | v50;
      self->_tabID.__engaged_ = v49;

      v52 = [dictionaryCopy objectForKeyedSubscript:@"windowId"];
      v53 = v52;
      if (!v52)
      {
        v57 = 0;
        v56 = 0;
        v58 = 0;
        goto LABEL_78;
      }

      [v52 doubleValue];
      v55 = v54;
      if (v54 == -1.0)
      {
        v56 = 1;
        v57 = -256;
      }

      else
      {
        if (v54 == -2.0)
        {
          v56 = 1;
          v57 = -256;
          v58 = 253;
          goto LABEL_78;
        }

        v56 = 0;
        v57 = 0;
        if ((v54 < 0.0 || ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v54 - 1) > 0xFFFFFFFFFFFFELL)
        {
          v58 = 0;
          goto LABEL_78;
        }

        v58 = 0;
        if (v54 >= 1.84467441e19)
        {
LABEL_78:

          self->_windowID.var0.__val_.m_identifier = v58 | v57;
          self->_windowID.__engaged_ = v56;

          v25 = 0;
          goto LABEL_79;
        }

        if (modf(v54, __y) != 0.0)
        {
          v56 = 0;
          v58 = 0;
          v57 = 0;
          goto LABEL_78;
        }

        if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v57 = v55 & 0xFFFFFFFFFFFFFF00;
          v58 = v55;
          v56 = 1;
          goto LABEL_78;
        }

        v57 = -256;
        v56 = 1;
      }

      v58 = 254;
      goto LABEL_78;
    }
  }

LABEL_79:

  return v25;
}

- (BOOL)matchesRequestForResourceOfType:(int64_t)type URL:(id)l tabID:(double)d windowID:(double)iD
{
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  types = self->_types;
  if (!types || ([MEMORY[0x1E696AD98] numberWithInteger:type], v12 = objc_claimAutoreleasedReturnValue(), v13 = -[NSSet containsObject:](types, "containsObject:", v12), v12, v13))
  {
    urlPatterns = self->_urlPatterns;
    if (urlPatterns)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = urlPatterns;
      v16 = [(NSArray *)v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v16)
      {
        v17 = *v25;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(v15);
            }

            if ([*(*(&v24 + 1) + 8 * i) matchesURL:{lCopy, v24}])
            {

              goto LABEL_14;
            }
          }

          v16 = [(NSArray *)v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
LABEL_14:
      if ((*&self->_tabID.__engaged_ & 1) == 0 || (v19 = self->_tabID.var0.__val_.m_identifier, v19 == -2) || v19 == d)
      {
        if ((*&self->_windowID.__engaged_ & 1) == 0)
        {
          goto LABEL_24;
        }

        m_identifier = self->_windowID.var0.__val_.m_identifier;
        if (m_identifier == -2)
        {
          goto LABEL_24;
        }

        v21 = m_identifier;
        if (m_identifier + 3 < 2)
        {
          v21 = -1.0;
        }

        if (v21 == iD)
        {
LABEL_24:
          v22 = 1;
          goto LABEL_23;
        }
      }
    }
  }

  v22 = 0;
LABEL_23:

  return v22;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 16) = 0;
  *(self + 24) = 0;
  *(self + 32) = 0;
  return self;
}

@end