@interface WKUserDefaults
- (WKUserDefaults)initWithSuiteName:(id)a3;
- (id).cxx_construct;
- (void)_notifyObserversOfChangeFromValuesForKeys:(id)a3 toValuesForKeys:(id)a4;
- (void)findPreferenceChangesAndNotifyForKeys:(id)a3 toValuesForKeys:(id)a4;
@end

@implementation WKUserDefaults

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

- (void)findPreferenceChangesAndNotifyForKeys:(id)a3 toValuesForKeys:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->m_observer.m_weakReference);
  if (WeakRetained)
  {

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v6)
    {
      v34 = *v40;
      v7 = *MEMORY[0x1E695E890];
      userName = *MEMORY[0x1E695E8A0];
      v8 = *MEMORY[0x1E695E898];
      v29 = a3;
      v30 = *MEMORY[0x1E695E8B8];
      applicationID = *MEMORY[0x1E695E890];
      v28 = *MEMORY[0x1E695E898];
      do
      {
        v9 = 0;
        v32 = v6;
        do
        {
          if (*v40 != v34)
          {
            objc_enumerationMutation(a3);
          }

          v10 = *(*(&v39 + 1) + 8 * v9);
          v11 = [a3 objectForKeyedSubscript:{v10, v28, v29}];
          v12 = v11;
          if (v11)
          {
            v13 = v11;
          }

          v14 = [a4 objectForKeyedSubscript:v10];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          if ([v12 isEqual:v15])
          {
            goto LABEL_40;
          }

          if (!v15)
          {
            v37 = 0;
LABEL_22:
            v23 = CFPreferencesCopyValue(v10, v7, userName, v8);
            v24 = CFPreferencesCopyValue(v10, v7, v30, v8);
            v25 = CFPreferencesCopyValue(v10, self->m_suiteName.m_ptr, v30, v8);
            if (v23 == v15 || ((v26 = [v23 isEqual:v15], v24 == v15) ? (v27 = 1) : (v27 = v26), (v27 & 1) != 0 || objc_msgSend(v24, "isEqual:", v15)))
            {
              [objc_loadWeak(&self->m_observer.m_weakReference) preferenceDidChange:0 key:v10 encodedValue:v37];
            }

            if (v25 == v15 || [v25 isEqual:v15])
            {
              [objc_loadWeak(&self->m_observer.m_weakReference) preferenceDidChange:self->m_suiteName.m_ptr key:v10 encodedValue:v37];
            }

            if (v25)
            {
              CFRelease(v25);
            }

            if (v24)
            {
              CFRelease(v24);
            }

            if (v23)
            {
              CFRelease(v23);
            }

            v8 = v28;
            a3 = v29;
            v6 = v32;
            v7 = applicationID;
            if (v37)
            {
            }

LABEL_40:
            if (!v15)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          }

          if ([objc_opt_class() supportsSecureCoding])
          {
            v38 = 0;
            v17 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v38];
            v18 = v17;
            if (v17)
            {
              v19 = v17;
            }

            v20 = [v18 base64EncodedStringWithOptions:0];
            v21 = v20;
            if (v20)
            {
              v22 = v20;
            }

            v37 = v21;
            if (v18)
            {
            }

            v7 = applicationID;
            goto LABEL_22;
          }

LABEL_41:

LABEL_42:
          if (v12)
          {
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [a3 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v6);
    }
  }
}

- (void)_notifyObserversOfChangeFromValuesForKeys:(id)a3 toValuesForKeys:(id)a4
{
  v22.receiver = self;
  v22.super_class = WKUserDefaults;
  v7 = [WKUserDefaults _notifyObserversOfChangeFromValuesForKeys:sel__notifyObserversOfChangeFromValuesForKeys_toValuesForKeys_ toValuesForKeys:?];
  if ((WTF::isMainRunLoop(v7) & 1) == 0)
  {
    [(WKUserDefaults *)self findPreferenceChangesAndNotifyForKeys:a3 toValuesForKeys:a4];
    return;
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3321888768;
  v18[2] = __76__WKUserDefaults__notifyObserversOfChangeFromValuesForKeys_toValuesForKeys___block_invoke;
  v18[3] = &__block_descriptor_64_e8_32c89_ZTSKZ76__WKUserDefaults__notifyObserversOfChangeFromValuesForKeys_toValuesForKeys__E3__1_e5_v8__0l;
  if (self)
  {
    v9 = self;
  }

  if (a3)
  {
    v10 = a3;
  }

  if (a4)
  {
    v11 = a4;
  }

  v18[4] = self;
  v19 = self;
  if (self)
  {
    v12 = self;
  }

  v20 = a3;
  if (a3)
  {
    v13 = a3;
  }

  v21 = a4;
  if (!a4)
  {
    dispatch_async(global_queue, v18);
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v14 = a4;
  dispatch_async(global_queue, v18);

  if (a3)
  {
LABEL_14:
  }

LABEL_15:
  if (self)
  {
  }

  v15 = v21;
  v21 = 0;
  if (v15)
  {
  }

  v16 = v20;
  v20 = 0;
  if (v16)
  {
  }

  v17 = v19;
  v19 = 0;
  if (v17)
  {
  }
}

- (WKUserDefaults)initWithSuiteName:(id)a3
{
  v8.receiver = self;
  v8.super_class = WKUserDefaults;
  v4 = [(WKUserDefaults *)&v8 initWithSuiteName:?];
  if (v4)
  {
    if (a3)
    {
      v5 = a3;
    }

    m_ptr = v4->m_suiteName.m_ptr;
    v4->m_suiteName.m_ptr = a3;
    if (m_ptr)
    {
    }

    objc_storeWeak(&v4->m_observer.m_weakReference, 0);
  }

  return v4;
}

@end