@interface _WKWarningView
- (RefPtr<const)_protectedWarning;
- (RefPtr<const)warning;
- (_WKWarningView)initWithFrame:(CGRect)frame browsingWarning:(const void *)warning completionHandler:(void *)handler;
- (id).cxx_construct;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
- (uint64_t)dealloc;
- (uint64_t)initWithFrame:(uint64_t)frame browsingWarning:completionHandler:;
- (void)addContent;
- (void)clickedOnLink:(id)link;
- (void)continueClicked;
- (void)dealloc;
- (void)goBackClicked;
- (void)layoutSubviews;
- (void)layoutText;
- (void)showDetailsClicked;
- (void)updateContentSize;
@end

@implementation _WKWarningView

- (_WKWarningView)initWithFrame:(CGRect)frame browsingWarning:(const void *)warning completionHandler:(void *)handler
{
  v20.receiver = self;
  v20.super_class = _WKWarningView;
  v7 = [(_WKWarningView *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v7)
  {
    v17 = 0;
    objc_initWeak(&v17, v7);
    v8 = *handler;
    *handler = 0;
    v18 = v8;
    v9 = WTF::fastMalloc(0x18);
    *v9 = &unk_1F10E5FB8;
    *(v9 + 8) = 0;
    objc_moveWeak((v9 + 8), &v17);
    v10 = v18;
    v18 = 0;
    *(v9 + 16) = v10;
    ptr = v7->_completionHandler.m_function.m_callableWrapper.__ptr_;
    v7->_completionHandler.m_function.m_callableWrapper.__ptr_ = v9;
    if (ptr)
    {
      (*(*ptr + 8))(ptr);
      v12 = v18;
      v18 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }

    objc_destroyWeak(&v17);
    ++*warning;
    m_ptr = v7->_warning.m_ptr;
    v7->_warning.m_ptr = warning;
    if (m_ptr)
    {
      WTF::RefCounted<WebKit::BrowsingWarning>::deref(m_ptr, v13);
    }

    [(_WKWarningView *)v7 setBackgroundColor:colorForItem(0, v7)];
  }

  else
  {
    LOBYTE(v17) = 1;
    v19 = 0;
    WTF::CompletionHandler<void ()(mpark::variant<WebKit::ContinueUnsafeLoad,WTF::URL> &&)>::operator()(handler);
    mpark::detail::move_constructor<mpark::detail::traits<WebKit::ContinueUnsafeLoad,WTF::URL>,(mpark::detail::Trait)1>::~move_constructor(&v17, v15);
  }

  return v7;
}

- (void)addContent
{
  v75[2] = *MEMORY[0x1E69E9840];
  v3 = colorForItem(2u, self);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  v6 = *MEMORY[0x1E69DDD58];
  [objc_msgSend(MEMORY[0x1E69DB878] preferredFontForTextStyle:{*MEMORY[0x1E69DDD58]), "pointSize"}];
  v9 = v8;
  if (self)
  {
    [(_WKWarningView *)self warning];
    isa = v65.super.isa;
  }

  else
  {
    isa = 0;
    v65.super.isa = 0;
  }

  if (*(isa + 88))
  {
    if (*(isa + 88) != 1)
    {
      goto LABEL_59;
    }

    v11 = @"lock.slash.fill";
  }

  else
  {
    v11 = @"exclamationmark.circle.fill";
  }

  v65.super.isa = 0;
  WTF::RefCounted<WebKit::BrowsingWarning>::deref(isa, v7);
  v12 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v13 = [v12 initWithImage:{objc_msgSend(MEMORY[0x1E69DCAB8], "systemImageNamed:", v11)}];
  [v13 setTintColor:v4];
  [v13 setPreferredSymbolConfiguration:{objc_msgSend(MEMORY[0x1E69DCAD8], "configurationWithPointSize:", v9 * 0.9)}];
  [v13 setContentMode:1];
  if (v4)
  {
  }

  v14 = objc_alloc(MEMORY[0x1E696AAB0]);
  v15 = *(self->_warning.m_ptr + 6);
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v64, v15);
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v16);
    }
  }

  else
  {
    v64.super.isa = &stru_1F1147748;
    v17 = &stru_1F1147748;
  }

  v18 = v64.super.isa;
  v19 = *MEMORY[0x1E69DB648];
  v74[0] = *MEMORY[0x1E69DB648];
  v75[0] = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{v6, v13}];
  v20 = *MEMORY[0x1E69DB650];
  v74[1] = *MEMORY[0x1E69DB650];
  v75[1] = colorForItem(3u, self);
  v21 = [v14 initWithString:v18 attributes:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v75, v74, 2)}];
  makeLabel(&v65, v21);
  if (v21)
  {
  }

  v22 = v64.super.isa;
  v64.super.isa = 0;
  if (v22)
  {
  }

  v23 = objc_alloc(MEMORY[0x1E696AAB0]);
  v24 = *(self->_warning.m_ptr + 7);
  if (v24)
  {
    atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v63, v24);
    if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v25);
    }
  }

  else
  {
    v63 = &stru_1F1147748;
    v26 = &stru_1F1147748;
  }

  v27 = v63;
  v72[0] = v19;
  v28 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v72[1] = v20;
  v73[0] = v28;
  v73[1] = colorForItem(4u, self);
  v29 = [v23 initWithString:v27 attributes:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v73, v72, 2)}];
  isa = makeLabel(&v64, v29);
  if (v29)
  {
  }

  v30 = v63;
  v63 = 0;
  if (v30)
  {
  }

  if (*(self->_warning.m_ptr + 88))
  {
    if (*(self->_warning.m_ptr + 88) == 1)
    {
      v31 = 7;
      v32 = &selRef_continueClicked;
      goto LABEL_32;
    }

LABEL_59:
    mpark::throw_bad_variant_access(isa);
  }

  v31 = 5;
  v32 = &selRef_showDetailsClicked;
LABEL_32:
  Button = makeButton(v31, self, *v32);
  v34 = Button;
  if (Button)
  {
    v35 = Button;
  }

  v58 = v34;
  v36 = makeButton(6u, self, sel_goBackClicked);
  v37 = v36;
  if (v36)
  {
    v38 = v36;
  }

  v39 = objc_opt_new();
  objc_storeWeak(&self->_box.m_weakReference, v39);
  [v39 setWarningViewBackgroundColor:{colorForItem(1u, self)}];
  [objc_msgSend(v39 "layer")];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v40 = v65.super.isa;
  v70[0] = v57;
  v70[1] = v65.super.isa;
  v41 = v64.super.isa;
  v70[2] = v64.super.isa;
  v70[3] = v37;
  v70[4] = v34;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:5];
  v43 = [v42 countByEnumeratingWithState:&v59 objects:v71 count:16];
  if (v43)
  {
    v44 = *v60;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v60 != v44)
        {
          objc_enumerationMutation(v42);
        }

        v46 = *(*(&v59 + 1) + 8 * i);
        [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v39 addSubview:v46];
      }

      v43 = [v42 countByEnumeratingWithState:&v59 objects:v71 count:16];
    }

    while (v43);
  }

  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_WKWarningView *)self addSubview:v39];
  v47 = MEMORY[0x1E696ACD8];
  v69[0] = [objc_msgSend(objc_msgSend(v39 "leadingAnchor")];
  v69[1] = [objc_msgSend(objc_msgSend(v39 "leadingAnchor")];
  v69[2] = [objc_msgSend(-[objc_class topAnchor](v40 "topAnchor")];
  v69[3] = [objc_msgSend(objc_msgSend(v39 "topAnchor")];
  v69[4] = [objc_msgSend(-[objc_class bottomAnchor](v40 "bottomAnchor")];
  v69[5] = [objc_msgSend(-[_WKWarningView topAnchor](self "topAnchor")];
  [v47 activateConstraints:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v69, 6)}];
  v48 = MEMORY[0x1E696ACD8];
  v68[0] = [objc_msgSend(-[_WKWarningView leftAnchor](self "leftAnchor")];
  v68[1] = [objc_msgSend(v39 "widthAnchor")];
  v68[2] = [objc_msgSend(v39 "widthAnchor")];
  v68[3] = [objc_msgSend(objc_msgSend(v39 "leadingAnchor")];
  v68[4] = [objc_msgSend(-[objc_class trailingAnchor](v40 "trailingAnchor")];
  v68[5] = [objc_msgSend(-[objc_class trailingAnchor](v41 "trailingAnchor")];
  v68[6] = [objc_msgSend(objc_msgSend(v37 "trailingAnchor")];
  v68[7] = [objc_msgSend(-[objc_class bottomAnchor](v41 "bottomAnchor")];
  [v48 activateConstraints:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v68, 8)}];
  [objc_msgSend(v58 "titleLabel")];
  v50 = v49;
  [objc_msgSend(v37 "titleLabel")];
  v52 = v51;
  [(_WKWarningView *)self frame];
  v53 = MEMORY[0x1E696ACD8];
  if (v50 + v52 + 60.0 <= v54)
  {
    v66[0] = [objc_msgSend(objc_msgSend(v58 "trailingAnchor")];
    v66[1] = [objc_msgSend(v37 "topAnchor")];
    v66[2] = [objc_msgSend(objc_msgSend(v37 "bottomAnchor")];
    [v53 activateConstraints:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v66, 3)}];
  }

  else
  {
    v67[0] = [objc_msgSend(objc_msgSend(v58 "trailingAnchor")];
    v67[1] = [objc_msgSend(objc_msgSend(v37 "bottomAnchor")];
    v55 = [objc_msgSend(v37 "bottomAnchor")];
    [objc_msgSend(v58 "titleLabel")];
    v67[2] = [v55 constraintEqualToConstant:v56 + 40.0];
    [v53 activateConstraints:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v67, 3)}];
  }

  [(_WKWarningView *)self updateContentSize];
  if (v39)
  {
  }

  if (v37)
  {
  }

  if (v58)
  {
  }

  if (v41)
  {
  }

  if (v40)
  {
  }

  if (v57)
  {
  }
}

- (void)showDetailsClicked
{
  v32[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_box.m_weakReference);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  v6 = [objc_msgSend(v4 "subviews")];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  [v7 removeFromSuperview];
  [(_WKWarningView *)self _protectedWarning];
  v9 = *(v27 + 9);
  if (v9)
  {
    v10 = v9;
  }

  v12 = [v9 mutableCopy];
  if (v9)
  {
  }

  v13 = v27;
  v27 = 0;
  if (v13)
  {
    WTF::RefCounted<WebKit::BrowsingWarning>::deref(v13, v11);
  }

  v31 = *MEMORY[0x1E69DB648];
  v32[0] = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v12 addAttributes:objc_msgSend(MEMORY[0x1E695DF20] range:{"dictionaryWithObjects:forKeys:count:", v32, &v31, 1), 0, objc_msgSend(v12, "length")}];
  v14 = [[_WKWarningViewTextView alloc] initWithAttributedString:v12 forWarning:self];
  v22 = v7;
  objc_storeWeak(&self->_details.m_weakReference, v14);
  v15 = objc_opt_new();
  [v15 setWarningViewBackgroundColor:{colorForItem(1u, self)}];
  [objc_msgSend(v15 "layer")];
  [objc_msgSend(v4 "layer")];
  [objc_msgSend(v15 "layer")];
  v16 = objc_opt_new();
  [v16 setWarningViewBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "lightGrayColor")}];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v29[0] = v14;
  v29[1] = v15;
  v29[2] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v18)
  {
    v19 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v23 + 1) + 8 * i) setTranslatesAutoresizingMaskIntoConstraints:0];
      }

      v18 = [v17 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v18);
  }

  [(_WKWarningView *)self addSubview:v15];
  [v15 addSubview:v16];
  [v15 addSubview:v14];
  v21 = MEMORY[0x1E696ACD8];
  v28[0] = [objc_msgSend(v4 "widthAnchor")];
  v28[1] = [objc_msgSend(v4 "bottomAnchor")];
  v28[2] = [objc_msgSend(v4 "leadingAnchor")];
  v28[3] = [objc_msgSend(v16 "widthAnchor")];
  v28[4] = [objc_msgSend(v16 "leadingAnchor")];
  v28[5] = [objc_msgSend(v16 "topAnchor")];
  v28[6] = [objc_msgSend(v16 "heightAnchor")];
  v28[7] = [objc_msgSend(objc_msgSend(v15 "topAnchor")];
  v28[8] = [objc_msgSend(-[_WKWarningViewTextView bottomAnchor](v14 "bottomAnchor")];
  v28[9] = [objc_msgSend(objc_msgSend(v15 "leadingAnchor")];
  v28[10] = [objc_msgSend(-[_WKWarningViewTextView trailingAnchor](v14 "trailingAnchor")];
  [v21 activateConstraints:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v28, 11)}];
  [(_WKWarningView *)self layoutText];
  [(_WKWarningView *)self updateContentSize];
  if (v16)
  {
  }

  if (v15)
  {
  }

  if (v14)
  {
  }

  if (v12)
  {
  }

  if (v22)
  {
  }

  if (v4)
  {
  }
}

- (void)updateContentSize
{
  v18 = *MEMORY[0x1E69E9840];
  [(_WKWarningView *)self layoutIfNeeded];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  subviews = [(_WKWarningView *)self subviews];
  v4 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v13 + 1) + 8 * i) frame];
        v7 = v7 + v9;
      }

      v5 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  [(_WKWarningView *)self frame];
  v11 = v10;
  [(_WKWarningView *)self frame];
  [(_WKWarningView *)self setContentSize:v11, v7 + v12 * 0.5];
}

- (void)layoutText
{
  Weak = objc_loadWeak(&self->_details.m_weakReference);

  [Weak invalidateIntrinsicContentSize];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _WKWarningView;
  [(_WKWarningView *)&v3 layoutSubviews];
  [(_WKWarningView *)self layoutText];
}

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  if (![item contentType])
  {
    -[_WKWarningView clickedOnLink:](self, "clickedOnLink:", [item link]);
  }

  return 0;
}

- (void)dealloc
{
  *self = &unk_1F10E5FE0;
  v3 = self[2];
  self[2] = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::BrowsingWarning>::deref(v3, a2);
  }

  v4 = self[1];
  self[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return self;
}

- (void)goBackClicked
{
  if (self->_completionHandler.m_function.m_callableWrapper.__ptr_)
  {
    v3[0] = 0;
    v3[40] = 0;
    WTF::CompletionHandler<void ()(mpark::variant<WebKit::ContinueUnsafeLoad,WTF::URL> &&)>::operator()(&self->_completionHandler);
    mpark::detail::move_constructor<mpark::detail::traits<WebKit::ContinueUnsafeLoad,WTF::URL>,(mpark::detail::Trait)1>::~move_constructor(v3, v2);
  }
}

- (void)continueClicked
{
  if (self->_completionHandler.m_function.m_callableWrapper.__ptr_)
  {
    v3[0] = 1;
    v3[40] = 0;
    WTF::CompletionHandler<void ()(mpark::variant<WebKit::ContinueUnsafeLoad,WTF::URL> &&)>::operator()(&self->_completionHandler);
    mpark::detail::move_constructor<mpark::detail::traits<WebKit::ContinueUnsafeLoad,WTF::URL>,(mpark::detail::Trait)1>::~move_constructor(v3, v2);
  }
}

- (void)clickedOnLink:(id)link
{
  if (self->_completionHandler.m_function.m_callableWrapper.__ptr_)
  {
    v5 = [link isEqual:WebKit::BrowsingWarning::visitUnsafeWebsiteSentinel(self)];
    if (v5 || [link isEqual:WebKit::BrowsingWarning::confirmMalwareSentinel(v5)])
    {
      v7[0] = 1;
      v8 = 0;
      WTF::CompletionHandler<void ()(mpark::variant<WebKit::ContinueUnsafeLoad,WTF::URL> &&)>::operator()(&self->_completionHandler);
    }

    else
    {
      MEMORY[0x19EB01DE0](v7, link);
      v8 = 1;
      WTF::CompletionHandler<void ()(mpark::variant<WebKit::ContinueUnsafeLoad,WTF::URL> &&)>::operator()(&self->_completionHandler);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebKit::ContinueUnsafeLoad,WTF::URL>,(mpark::detail::Trait)1>::~move_constructor(v7, v6);
  }
}

- (RefPtr<const)_protectedWarning
{
  m_ptr = self->_warning.m_ptr;
  if (m_ptr)
  {
    ++*m_ptr;
  }

  *v2 = m_ptr;
  return self;
}

- (RefPtr<const)warning
{
  m_ptr = self->_warning.m_ptr;
  if (m_ptr)
  {
    ++*m_ptr;
  }

  *v2 = m_ptr;
  return self;
}

- (id).cxx_construct
{
  *(self + 269) = 0;
  *(self + 270) = 0;
  *(self + 271) = 0;
  *(self + 272) = 0;
  return self;
}

- (uint64_t)initWithFrame:(uint64_t)frame browsingWarning:completionHandler:
{
  *frame = &unk_1F10E5FB8;
  v2 = *(frame + 16);
  *(frame + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  objc_destroyWeak((frame + 8));
  return frame;
}

- (uint64_t)dealloc
{
  v2 = *(self + 8);
  result = (self + 8);
  if (v2)
  {
    v4[0] = 0;
    v4[40] = 0;
    WTF::CompletionHandler<void ()(mpark::variant<WebKit::ContinueUnsafeLoad,WTF::URL> &&)>::operator()(result);
    return mpark::detail::move_constructor<mpark::detail::traits<WebKit::ContinueUnsafeLoad,WTF::URL>,(mpark::detail::Trait)1>::~move_constructor(v4, v3);
  }

  return result;
}

@end