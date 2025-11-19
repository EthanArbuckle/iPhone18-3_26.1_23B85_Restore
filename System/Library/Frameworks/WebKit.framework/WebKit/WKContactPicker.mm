@interface WKContactPicker
- (BOOL)dismissIfNeededWithReason:(unsigned __int8)a3;
- (ContactInfo)_contactInfoFromCNContact:(SEL)a3;
- (WKContactPicker)initWithView:(id)a3;
- (WKContactPickerDelegate)delegate;
- (id).cxx_construct;
- (id)_contactsFromJSContacts:(id)a3;
- (void)_contactPickerDidDismissWithContactInfo:(void *)a3;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPicker:(id)a3 didSelectContacts:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)dismissWithContacts:(id)a3;
- (void)presentWithRequestData:(const void *)a3 completionHandler:(void *)a4;
@end

@implementation WKContactPicker

- (WKContactPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate.m_weakReference);
  v3 = WeakRetained;
  if (WeakRetained)
  {
  }

  return v3;
}

- (WKContactPicker)initWithView:(id)a3
{
  v7.receiver = self;
  v7.super_class = WKContactPicker;
  v4 = [(WKContactPicker *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_webView.m_weakReference, a3);
  }

  return v5;
}

- (void)presentWithRequestData:(const void *)a3 completionHandler:(void *)a4
{
  p_properties = &self->_properties;
  if (&self->_properties != a3)
  {
    m_size = self->_properties.m_size;
    v9 = *(a3 + 3);
    if (m_size <= v9)
    {
      if (v9 > self->_properties.m_capacity)
      {
        WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&self->_properties, 0);
        WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(p_properties, *(a3 + 3));
        m_size = self->_properties.m_size;
      }
    }

    else
    {
      self->_properties.m_size = v9;
      m_size = v9;
    }

    if (m_size)
    {
      memmove(self->_properties.m_buffer, *a3, m_size);
      v10 = self->_properties.m_size;
    }

    else
    {
      v10 = 0;
    }

    memcpy(&self->_properties.m_buffer[v10], (*a3 + v10), *(a3 + 3) - v10);
    self->_properties.m_size = *(a3 + 3);
  }

  v11 = *a4;
  *a4 = 0;
  ptr = self->_completionHandler.m_function.m_callableWrapper.__ptr_;
  self->_completionHandler.m_function.m_callableWrapper.__ptr_ = v11;
  if (ptr)
  {
    (*(*ptr + 8))(ptr);
  }

  if (*(a3 + 16) == 1)
  {
    v13 = WKCNContactPickerMultiSelectDelegate;
  }

  else
  {
    v13 = WKCNContactPickerSingleSelectDelegate;
  }

  v14 = [[v13 alloc] initWithContactPickerDelegate:self];
  m_ptr = self->_contactPickerDelegate.m_ptr;
  self->_contactPickerDelegate.m_ptr = v14;
  if (m_ptr)
  {
  }

  v16 = [objc_alloc(getCNContactPickerViewControllerClass()) init];
  v17 = self->_contactPickerViewController.m_ptr;
  self->_contactPickerViewController.m_ptr = v16;
  if (v17)
  {

    v16 = self->_contactPickerViewController.m_ptr;
  }

  [(CNContactPickerViewController *)v16 setDelegate:self->_contactPickerDelegate.m_ptr];
  v18 = self->_contactPickerViewController.m_ptr;
  v19 = *(a3 + 3);
  if (v19)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&location, v19);
    if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v20);
    }
  }

  else
  {
    location = &stru_1F1147748;
    v21 = &stru_1F1147748;
  }

  [(CNContactPickerViewController *)v18 setPrompt:location];
  v22 = location;
  location = 0;
  if (v22)
  {
  }

  v23 = [objc_loadWeak(&self->_webView.m_weakReference) _wk_viewControllerForFullScreenPresentation];
  v24 = self->_contactPickerViewController.m_ptr;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3321888768;
  v25[2] = __60__WKContactPicker_presentWithRequestData_completionHandler___block_invoke;
  v25[3] = &__block_descriptor_40_e8_32c74_ZTSKZ60__WKContactPicker_presentWithRequestData_completionHandler__E4__47_e5_v8__0l;
  location = 0;
  objc_initWeak(&location, self);
  v26 = 0;
  objc_copyWeak(&v26, &location);
  [v23 presentViewController:v24 animated:1 completion:v25];
  objc_destroyWeak(&location);
  objc_destroyWeak(&v26);
}

void __60__WKContactPicker_presentWithRequestData_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [objc_msgSend(v2 "delegate")];
    }
  }
}

- (BOOL)dismissIfNeededWithReason:(unsigned __int8)a3
{
  if (a3 == 1)
  {
    if (([(CNContactPickerViewController *)self->_contactPickerViewController.m_ptr _wk_isInFullscreenPresentation]& 1) != 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if ((a3 - 1) <= 1)
  {
LABEL_5:
    [(WKContactPicker *)self setDelegate:0];
  }

  [(WKContactPicker *)self dismiss];
  return 1;
}

- (void)contactPickerDidCancel:(id)a3
{
  v4[0] = 0;
  v4[1] = 0;
  [(WKContactPicker *)self _contactPickerDidDismissWithContactInfo:v4];
  WTF::Vector<WebCore::ContactInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v3);
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [(WKContactPicker *)self _contactInfoFromCNContact:a4];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
  }

  v10 = 1;
  v9 = WTF::fastMalloc(0x30);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v9, &v12);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v9 + 16, &v13);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v9 + 32, &v14);
  v11 = 1;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v14, v5);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v6);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v7);
  [(WKContactPicker *)self _contactPickerDidDismissWithContactInfo:&v9];
  WTF::Vector<WebCore::ContactInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v8);
}

- (void)contactPicker:(id)a3 didSelectContacts:(id)a4
{
  v6 = [a4 count];
  v15 = 0;
  v16 = 0;
  if (!v6)
  {
LABEL_8:
    [(WKContactPicker *)self _contactPickerDidDismissWithContactInfo:&v15];
    WTF::Vector<WebCore::ContactInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v14);
    return;
  }

  v7 = v6;
  if (v6 < 0x5555556)
  {
    v8 = 0;
    LODWORD(v16) = 48 * v6 / 0x30u;
    v15 = WTF::fastMalloc((48 * v6));
    v9 = v15;
    do
    {
      v10 = [a4 objectAtIndexedSubscript:{v8, v15, v16, v17, v18, v19}];
      if (self)
      {
        [(WKContactPicker *)self _contactInfoFromCNContact:v10];
      }

      else
      {
        v18 = 0u;
        v19 = 0u;
        v17 = 0u;
      }

      WebCore::ContactInfo::ContactInfo(v9, &v17);
      HIDWORD(v16) = ++v8;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v11);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v12);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v13);
      v9 += 6;
    }

    while (v7 != v8);
    goto LABEL_8;
  }

  __break(0xC471u);
}

- (void)_contactPickerDidDismissWithContactInfo:(void *)a3
{
  v6[0] = *a3;
  v4 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v6[1] = v4;
  v7 = 1;
  WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ContactInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>::operator()(&self->_completionHandler);
  WTF::Vector<WebCore::ContactInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, v5);
  objc_loadWeak(&self->_delegate.m_weakReference);
  if (objc_opt_respondsToSelector())
  {
    [objc_loadWeak(&self->_delegate.m_weakReference) contactPickerDidDismiss:self];
  }
}

- (ContactInfo)_contactInfoFromCNContact:(SEL)a3
{
  v46[1] = *MEMORY[0x1E69E9840];
  retstr->var1 = 0u;
  retstr->var2 = 0u;
  retstr->var0 = 0u;
  m_buffer_high = HIDWORD(self->var2.m_buffer);
  if (!m_buffer_high)
  {
    return self;
  }

  v7 = self;
  v8 = *&self->var1.m_capacity;
  while (1)
  {
    v9 = *v8++;
    if (v9 == 1)
    {
      break;
    }

    if (!--m_buffer_high)
    {
      goto LABEL_16;
    }
  }

  v10 = [getCNContactFormatterClass() stringFromContact:a4 style:0];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  MEMORY[0x19EB02040](v46, v11);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v42, v46, 1uLL);
  m_size = retstr->var0.m_size;
  if (m_size)
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(retstr->var0.m_buffer, &retstr->var0.m_buffer[m_size]);
  }

  m_buffer = retstr->var0.m_buffer;
  if (retstr->var0.m_buffer)
  {
    retstr->var0.m_buffer = 0;
    retstr->var0.m_capacity = 0;
    WTF::fastFree(m_buffer, v13);
  }

  retstr->var0.m_buffer = v42;
  v16 = v43;
  v42 = 0;
  v43 = 0;
  *&retstr->var0.m_capacity = v16;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, v13);
  self = v46[0];
  v46[0] = 0;
  if (!self || atomic_fetch_add_explicit(self, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if (!v11)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  self = WTF::StringImpl::destroy(self, v17);
  if (v11)
  {
LABEL_15:
  }

LABEL_16:
  v18 = HIDWORD(v7->var2.m_buffer);
  if (v18)
  {
    v19 = *&v7->var1.m_capacity;
    while (*v19++)
    {
      if (!--v18)
      {
        goto LABEL_32;
      }
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v21 = [a4 emailAddresses];
    self = [v21 countByEnumeratingWithState:&v38 objects:v45 count:16];
    v22 = self;
    if (self)
    {
      v23 = *v39;
      do
      {
        v24 = 0;
        do
        {
          if (*v39 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v42 = [*(*(&v38 + 1) + 8 * v24) value];
          v25 = retstr->var1.m_size;
          if (v25 == retstr->var1.m_capacity)
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,NSString *&>(&retstr->var1, &v42);
          }

          else
          {
            MEMORY[0x19EB02040](&retstr->var1.m_buffer[v25]);
            ++retstr->var1.m_size;
          }

          v24 = (v24 + 1);
        }

        while (v22 != v24);
        self = [v21 countByEnumeratingWithState:&v38 objects:v45 count:16];
        v22 = self;
      }

      while (self);
    }

LABEL_32:
    v26 = HIDWORD(v7->var2.m_buffer);
    if (v26)
    {
      v27 = *&v7->var1.m_capacity;
      while (1)
      {
        v28 = *v27++;
        if (v28 == 2)
        {
          break;
        }

        if (!--v26)
        {
          return self;
        }
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v29 = [a4 phoneNumbers];
      self = [v29 countByEnumeratingWithState:&v34 objects:v44 count:16];
      v30 = self;
      if (self)
      {
        v31 = *v35;
        do
        {
          v32 = 0;
          do
          {
            if (*v35 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v42 = [objc_msgSend(*(*(&v34 + 1) + 8 * v32) "value")];
            v33 = retstr->var2.m_size;
            if (v33 == retstr->var2.m_capacity)
            {
              WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,NSString *&>(&retstr->var2, &v42);
            }

            else
            {
              MEMORY[0x19EB02040](&retstr->var2.m_buffer[v33]);
              ++retstr->var2.m_size;
            }

            v32 = (v32 + 1);
          }

          while (v30 != v32);
          self = [v29 countByEnumeratingWithState:&v34 objects:v44 count:16];
          v30 = self;
        }

        while (self);
      }
    }
  }

  return self;
}

- (void)dismissWithContacts:(id)a3
{
  m_ptr = self->_contactPickerViewController.m_ptr;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3321888768;
  v12[2] = __39__WKContactPicker_dismissWithContacts___block_invoke;
  v12[3] = &__block_descriptor_56_e8_32c53_ZTSKZ39__WKContactPicker_dismissWithContacts__E4__48_e5_v8__0l;
  v10 = 0;
  objc_initWeak(&v10, self);
  v11 = a3;
  if (a3)
  {
    v5 = a3;
  }

  v12[4] = self;
  v13 = 0;
  objc_copyWeak(&v13, &v10);
  v14 = v11;
  if (v11)
  {
    v6 = v11;
  }

  [(CNContactPickerViewController *)m_ptr dismissViewControllerAnimated:0 completion:v12, self];
  v7 = v11;
  v11 = 0;
  if (v7)
  {
  }

  objc_destroyWeak(&v10);
  v8 = v14;
  v14 = 0;
  if (v8)
  {
  }

  objc_destroyWeak(&v13);
}

void __39__WKContactPicker_dismissWithContacts___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained contactPicker:*(*(a1 + 32) + 56) didSelectContacts:{objc_msgSend(WeakRetained, "_contactsFromJSContacts:", *(a1 + 48))}];
  }
}

- (id)_contactsFromJSContacts:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = a3;
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a3, "count")}];
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self isKindOfClass: %@", objc_opt_class()];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v8 = [v3 countByEnumeratingWithState:&v61 objects:v68 count:16];
    if (v8)
    {
      v46 = v6;
      v47 = *v62;
      v43 = v3;
      v45 = v4;
      do
      {
        v51 = 0;
        v48 = v8;
        do
        {
          if (*v62 != v47)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v61 + 1) + 8 * v51);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [objc_alloc(off_1ED63B640()) init];
            v11 = [v9 objectForKey:@"name"];
            v12 = v11;
            if (v11)
            {
              v13 = v11;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              memset(v60, 0, sizeof(v60));
              if ([objc_msgSend(v12 filteredArrayUsingPredicate:{v6), "countByEnumeratingWithState:objects:count:", v60, v67, 16}])
              {
                [v10 setGivenName:**(&v60[0] + 1)];
              }
            }

            v14 = [v9 objectForKey:@"email"];
            v15 = v14;
            if (v14)
            {
              v16 = v14;
            }

            v49 = v15;
            objc_opt_class();
            v44 = v12;
            v50 = v10;
            if (objc_opt_isKindOfClass())
            {
              v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v58 = 0u;
              v59 = 0u;
              v56 = 0u;
              v57 = 0u;
              v18 = [v15 filteredArrayUsingPredicate:v46];
              v19 = [v18 countByEnumeratingWithState:&v56 objects:v66 count:16];
              if (v19)
              {
                v20 = *v57;
                do
                {
                  for (i = 0; i != v19; ++i)
                  {
                    if (*v57 != v20)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v22 = [_MergedGlobals_244() labeledValueWithLabel:0 value:*(*(&v56 + 1) + 8 * i)];
                    v23 = v22;
                    if (v22)
                    {
                      v24 = v22;
                    }

                    [v17 addObject:v23];
                    if (v23)
                    {
                    }
                  }

                  v19 = [v18 countByEnumeratingWithState:&v56 objects:v66 count:16];
                }

                while (v19);
              }

              [v50 setEmailAddresses:v17];
              v3 = v43;
              if (v17)
              {
              }
            }

            v25 = [v9 objectForKey:@"tel"];
            if (v25)
            {
              v26 = v25;
              v27 = v25;
              v25 = v26;
            }

            v28 = v25;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v54 = 0u;
              v55 = 0u;
              v52 = 0u;
              v53 = 0u;
              v30 = [v28 filteredArrayUsingPredicate:v46];
              v31 = [v30 countByEnumeratingWithState:&v52 objects:v65 count:16];
              if (v31)
              {
                v32 = *v53;
                do
                {
                  for (j = 0; j != v31; ++j)
                  {
                    if (*v53 != v32)
                    {
                      objc_enumerationMutation(v30);
                    }

                    v34 = [off_1ED63B638() phoneNumberWithStringValue:*(*(&v52 + 1) + 8 * j)];
                    v35 = v34;
                    if (v34)
                    {
                      v36 = v34;
                    }

                    v37 = [_MergedGlobals_244() labeledValueWithLabel:0 value:v35];
                    v38 = v37;
                    if (v37)
                    {
                      v39 = v37;
                    }

                    [v29 addObject:v38];
                    if (v38)
                    {
                    }

                    if (v35)
                    {
                    }
                  }

                  v31 = [v30 countByEnumeratingWithState:&v52 objects:v65 count:16];
                }

                while (v31);
              }

              [v50 setPhoneNumbers:v29];
              v3 = v43;
              if (v29)
              {
              }
            }

            v4 = v45;
            [v45 addObject:v50];
            if (v28)
            {
            }

            v6 = v46;
            if (v49)
            {
            }

            if (v44)
            {
            }

            if (v50)
            {
            }
          }

          ++v51;
        }

        while (v51 != v48);
        v8 = [v3 countByEnumeratingWithState:&v61 objects:v68 count:16];
      }

      while (v8);
    }

    if (v4)
    {
      v40 = v4;
    }

    if (v6)
    {
    }

    return v4;
  }

  else
  {
    v42 = MEMORY[0x1E695DEC8];

    return [v42 array];
  }
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end