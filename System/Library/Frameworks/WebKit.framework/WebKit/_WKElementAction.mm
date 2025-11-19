@interface _WKElementAction
+ (id)_elementActionWithType:(int64_t)a3 customTitle:(id)a4 assistant:(id)a5 disabled:(BOOL)a6;
+ (id)_elementActionWithType:(int64_t)a3 info:(id)a4 assistant:(id)a5 disabled:(BOOL)a6;
+ (id)_elementActionWithType:(int64_t)a3 title:(id)a4 actionHandler:(id)a5;
+ (id)elementActionWithTitle:(id)a3 actionHandler:(id)a4;
+ (id)imageForElementActionType:(int64_t)a3;
+ (int64_t)elementActionTypeForUIActionIdentifier:(id)a3;
- (id).cxx_construct;
- (id)_initWithTitle:(id)a3 actionHandler:(id)a4 type:(int64_t)a5 assistant:(id)a6 disabled:(BOOL)a7;
- (id)uiActionForElementInfo:(id)a3;
- (void)dealloc;
- (void)runActionWithElementInfo:(id)a3;
@end

@implementation _WKElementAction

- (id)_initWithTitle:(id)a3 actionHandler:(id)a4 type:(int64_t)a5 assistant:(id)a6 disabled:(BOOL)a7
{
  v16.receiver = self;
  v16.super_class = _WKElementAction;
  v12 = [(_WKElementAction *)&v16 init];
  if (v12)
  {
    v13 = [a3 copy];
    m_ptr = v12->_title.m_ptr;
    v12->_title.m_ptr = v13;
    if (m_ptr)
    {
    }

    v12->_type = a5;
    v12->_actionHandler = [a4 copy];
    v12->_disabled = a7;
    objc_storeWeak(&v12->_defaultActionSheetAssistant.m_weakReference, a6);
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _WKElementAction;
  [(_WKElementAction *)&v3 dealloc];
}

+ (id)elementActionWithTitle:(id)a3 actionHandler:(id)a4
{
  v6 = [a1 alloc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57___WKElementAction_elementActionWithTitle_actionHandler___block_invoke;
  v11[3] = &unk_1E7631768;
  v11[4] = a4;
  v7 = [v6 _initWithTitle:a3 actionHandler:v11 type:0 assistant:0];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  return v8;
}

+ (id)_elementActionWithType:(int64_t)a3 title:(id)a4 actionHandler:(id)a5
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63___WKElementAction__elementActionWithType_title_actionHandler___block_invoke;
  v9[3] = &unk_1E7631768;
  v9[4] = a5;
  v5 = [[a1 alloc] _initWithTitle:a4 actionHandler:v9 type:a3 assistant:0];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

+ (id)_elementActionWithType:(int64_t)a3 customTitle:(id)a4 assistant:(id)a5 disabled:(BOOL)a6
{
  v6 = a6;
  v11 = &stru_1F1147748;
  v12 = &stru_1F1147748;
  if (a3 <= 10)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        WebCore::localizedString(&v90, @"Open", v13);
        v22 = v90;
        if (v90)
        {
          atomic_fetch_add_explicit(v90, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v91, v22);
          if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v23);
          }
        }

        else
        {
          v91 = &stru_1F1147748;
          v36 = &stru_1F1147748;
        }

        v11 = v91;
        v91 = 0;

        v38 = v91;
        v91 = 0;
        if (v38)
        {
        }

        v39 = v90;
        v90 = 0;
        if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v39, v37);
        }

        v32 = v88;
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = __74___WKElementAction__elementActionWithType_customTitle_assistant_disabled___block_invoke_2;
        v88[3] = &__block_descriptor_40_e60_v24__0__WKActionSheetAssistant_8___WKActivatedElementInfo_16l;
        v88[4] = 1;
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_45;
        }

        WebCore::localizedString(&v90, @"Copy (ActionSheet)", v13);
        v20 = v90;
        if (v90)
        {
          atomic_fetch_add_explicit(v90, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v91, v20);
          if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v21);
          }
        }

        else
        {
          v91 = &stru_1F1147748;
          v40 = &stru_1F1147748;
        }

        v11 = v91;
        v91 = 0;

        v42 = v91;
        v91 = 0;
        if (v42)
        {
        }

        v43 = v90;
        v90 = 0;
        if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v43, v41);
        }

        v32 = v89;
        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 3221225472;
        v89[2] = __74___WKElementAction__elementActionWithType_customTitle_assistant_disabled___block_invoke;
        v89[3] = &__block_descriptor_40_e60_v24__0__WKActionSheetAssistant_8___WKActivatedElementInfo_16l;
        v89[4] = 2;
      }
    }

    else
    {
      switch(a3)
      {
        case 3:
          WebCore::localizedString(&v90, @"Save to Photos", v13);
          v30 = v90;
          if (v90)
          {
            atomic_fetch_add_explicit(v90, 2u, memory_order_relaxed);
            MEMORY[0x19EB00B70](&v91, v30);
            if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v30, v31);
            }
          }

          else
          {
            v91 = &stru_1F1147748;
            v60 = &stru_1F1147748;
          }

          v11 = v91;
          v91 = 0;

          v62 = v91;
          v91 = 0;
          if (v62)
          {
          }

          v63 = v90;
          v90 = 0;
          if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v63, v61);
          }

          v32 = v87;
          v87[0] = MEMORY[0x1E69E9820];
          v87[1] = 3221225472;
          v87[2] = __74___WKElementAction__elementActionWithType_customTitle_assistant_disabled___block_invoke_3;
          v87[3] = &__block_descriptor_40_e60_v24__0__WKActionSheetAssistant_8___WKActivatedElementInfo_16l;
          v87[4] = 3;
          break;
        case 4:
          WebCore::localizedString(&v90, @"Add to Reading List", v13);
          v24 = v90;
          if (v90)
          {
            atomic_fetch_add_explicit(v90, 2u, memory_order_relaxed);
            MEMORY[0x19EB00B70](&v91, v24);
            if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v24, v25);
            }
          }

          else
          {
            v91 = &stru_1F1147748;
            v44 = &stru_1F1147748;
          }

          v11 = v91;
          v91 = 0;

          v46 = v91;
          v91 = 0;
          if (v46)
          {
          }

          v47 = v90;
          v90 = 0;
          if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v47, v45);
          }

          v32 = &__block_literal_global_19;
          break;
        case 7:
          WebCore::localizedString(&v90, @"Share…", v13);
          v16 = v90;
          if (v90)
          {
            atomic_fetch_add_explicit(v90, 2u, memory_order_relaxed);
            MEMORY[0x19EB00B70](&v91, v16);
            if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v16, v17);
            }
          }

          else
          {
            v91 = &stru_1F1147748;
            v56 = &stru_1F1147748;
          }

          v11 = v91;
          v91 = 0;

          v58 = v91;
          v91 = 0;
          if (v58)
          {
          }

          v59 = v90;
          v90 = 0;
          if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v59, v57);
          }

          v32 = v86;
          v86[0] = MEMORY[0x1E69E9820];
          v86[1] = 3221225472;
          v86[2] = __74___WKElementAction__elementActionWithType_customTitle_assistant_disabled___block_invoke_5;
          v86[3] = &__block_descriptor_40_e60_v24__0__WKActionSheetAssistant_8___WKActivatedElementInfo_16l;
          v86[4] = 7;
          break;
        default:
          goto LABEL_45;
      }
    }
  }

  else
  {
    if (a3 <= 13)
    {
      if (a3 == 11)
      {
        v32 = 0;
      }

      else if (a3 == 12)
      {
        WebCore::localizedString(&v90, @"Show Text", v13);
        v26 = v90;
        if (v90)
        {
          atomic_fetch_add_explicit(v90, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v91, v26);
          if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v27);
          }
        }

        else
        {
          v91 = &stru_1F1147748;
          v48 = &stru_1F1147748;
        }

        v11 = v91;
        v91 = 0;

        v50 = v91;
        v91 = 0;
        if (v50)
        {
        }

        v51 = v90;
        v90 = 0;
        if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v51, v49);
        }

        v32 = v85;
        v85[0] = MEMORY[0x1E69E9820];
        v85[1] = 3221225472;
        v85[2] = __74___WKElementAction__elementActionWithType_customTitle_assistant_disabled___block_invoke_6;
        v85[3] = &__block_descriptor_40_e60_v24__0__WKActionSheetAssistant_8___WKActivatedElementInfo_16l;
        v85[4] = 12;
      }

      else
      {
        WebCore::contextMenuItemTagLookUpImage(&v90, v12);
        v14 = v90;
        if (v90)
        {
          atomic_fetch_add_explicit(v90, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v91, v14);
          if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v15);
          }
        }

        else
        {
          v91 = &stru_1F1147748;
          v64 = &stru_1F1147748;
        }

        v11 = v91;
        v91 = 0;

        v66 = v91;
        v91 = 0;
        if (v66)
        {
        }

        v67 = v90;
        v90 = 0;
        if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v67, v65);
        }

        v32 = v84;
        v84[0] = MEMORY[0x1E69E9820];
        v84[1] = 3221225472;
        v84[2] = __74___WKElementAction__elementActionWithType_customTitle_assistant_disabled___block_invoke_7;
        v84[3] = &__block_descriptor_40_e60_v24__0__WKActionSheetAssistant_8___WKActivatedElementInfo_16l;
        v84[4] = 13;
      }

      goto LABEL_116;
    }

    switch(a3)
    {
      case 14:
        WebCore::contextMenuItemTagCopySubject(&v90, v12);
        v33 = v90;
        if (v90)
        {
          atomic_fetch_add_explicit(v90, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v91, v33);
          if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v33, v34);
          }
        }

        else
        {
          v91 = &stru_1F1147748;
          v72 = &stru_1F1147748;
        }

        v11 = v91;
        v91 = 0;

        v74 = v91;
        v91 = 0;
        if (v74)
        {
        }

        v75 = v90;
        v90 = 0;
        if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v75, v73);
        }

        v32 = v83;
        v83[0] = MEMORY[0x1E69E9820];
        v83[1] = 3221225472;
        v83[2] = __74___WKElementAction__elementActionWithType_customTitle_assistant_disabled___block_invoke_8;
        v83[3] = &__block_descriptor_40_e60_v24__0__WKActionSheetAssistant_8___WKActivatedElementInfo_16l;
        v83[4] = 14;
        break;
      case 15:
        WebCore::localizedString(&v90, @"Play Animation", v13);
        v28 = v90;
        if (v90)
        {
          atomic_fetch_add_explicit(v90, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v91, v28);
          if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v29);
          }
        }

        else
        {
          v91 = &stru_1F1147748;
          v52 = &stru_1F1147748;
        }

        v11 = v91;
        v91 = 0;

        v54 = v91;
        v91 = 0;
        if (v54)
        {
        }

        v55 = v90;
        v90 = 0;
        if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v55, v53);
        }

        v32 = v82;
        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 3221225472;
        v82[2] = __74___WKElementAction__elementActionWithType_customTitle_assistant_disabled___block_invoke_9;
        v82[3] = &__block_descriptor_40_e60_v24__0__WKActionSheetAssistant_8___WKActivatedElementInfo_16l;
        v82[4] = 15;
        break;
      case 16:
        WebCore::localizedString(&v90, @"Pause Animation", v13);
        v18 = v90;
        if (v90)
        {
          atomic_fetch_add_explicit(v90, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v91, v18);
          if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, v19);
          }
        }

        else
        {
          v91 = &stru_1F1147748;
          v68 = &stru_1F1147748;
        }

        v11 = v91;
        v91 = 0;

        v70 = v91;
        v91 = 0;
        if (v70)
        {
        }

        v71 = v90;
        v90 = 0;
        if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v71, v69);
        }

        v32 = v81;
        v81[0] = MEMORY[0x1E69E9820];
        v81[1] = 3221225472;
        v81[2] = __74___WKElementAction__elementActionWithType_customTitle_assistant_disabled___block_invoke_10;
        v81[3] = &__block_descriptor_40_e60_v24__0__WKActionSheetAssistant_8___WKActivatedElementInfo_16l;
        v81[4] = 16;
        break;
      default:
LABEL_45:
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"There is no standard web element action of type %ld.", a3}];
        v35 = 0;
LABEL_122:

        return v35;
    }
  }

LABEL_116:
  v76 = [a1 alloc];
  if (a4)
  {
    v77 = a4;
  }

  else
  {
    v77 = v11;
  }

  v78 = [v76 _initWithTitle:v77 actionHandler:v32 type:a3 assistant:a5 disabled:v6];
  v35 = v78;
  if (v78)
  {
    v79 = v78;
  }

  if (v11)
  {
    goto LABEL_122;
  }

  return v35;
}

+ (id)_elementActionWithType:(int64_t)a3 info:(id)a4 assistant:(id)a5 disabled:(BOOL)a6
{
  v6 = a6;
  if (a3 != 2 || [a4 type] || (objc_msgSend(a4, "_isImage") & 1) != 0)
  {
    v12 = 0;
  }

  else
  {
    WebCore::localizedString(&v19, @"Copy Link (ActionSheet)", v11);
    v15 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v20, v15);
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v16);
      }
    }

    else
    {
      v20 = &stru_1F1147748;
      v17 = &stru_1F1147748;
    }

    v18 = v19;
    v12 = v20;
    v19 = 0;
    v20 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v16);
    }
  }

  v13 = [a1 _elementActionWithType:a3 customTitle:v12 assistant:a5 disabled:{v6, v19, v20}];
  if (v12)
  {
  }

  return v13;
}

- (void)runActionWithElementInfo:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_defaultActionSheetAssistant.m_weakReference);
  [(_WKElementAction *)self _runActionWithElementInfo:a3 forActionSheetAssistant:?];
  if (WeakRetained)
  {
  }
}

+ (id)imageForElementActionType:(int64_t)a3
{
  switch(a3)
  {
    case 1:
    case 5:
      v3 = MEMORY[0x1E69DCAB8];
      v4 = @"safari";
      goto LABEL_3;
    case 2:
      v3 = MEMORY[0x1E69DCAB8];
      v4 = @"doc.on.doc";
      goto LABEL_3;
    case 3:
      v3 = MEMORY[0x1E69DCAB8];
      v4 = @"square.and.arrow.down";
      goto LABEL_3;
    case 4:
      v3 = MEMORY[0x1E69DCAB8];
      v4 = @"eyeglasses";
      goto LABEL_3;
    case 6:
      v3 = MEMORY[0x1E69DCAB8];
      v4 = @"arrow.up.forward.app";
      goto LABEL_3;
    case 7:
      v3 = MEMORY[0x1E69DCAB8];
      v4 = @"square.and.arrow.up";
      goto LABEL_3;
    case 8:
      v3 = MEMORY[0x1E69DCAB8];
      v4 = @"plus.square.on.square";
      goto LABEL_3;
    case 9:
      v3 = MEMORY[0x1E69DCAB8];
      v4 = @"square.grid.2x2";
      goto LABEL_3;
    case 10:
      v3 = MEMORY[0x1E69DCAB8];
      v4 = @"arrow.down.circle";
      goto LABEL_3;
    case 12:
      v3 = MEMORY[0x1E69DCAB8];
      v4 = @"text.viewfinder";
      goto LABEL_3;
    case 13:
      v6 = MEMORY[0x1E69DCAB8];
      v7 = @"info.circle.and.sparkles";
      return [v6 _systemImageNamed:v7];
    case 14:
      v6 = MEMORY[0x1E69DCAB8];
      v7 = @"circle.dashed.rectangle";
      return [v6 _systemImageNamed:v7];
    case 15:
      v3 = MEMORY[0x1E69DCAB8];
      v4 = @"play.circle";
      goto LABEL_3;
    case 16:
      v3 = MEMORY[0x1E69DCAB8];
      v4 = @"pause.circle";
LABEL_3:
      result = [v3 systemImageNamed:v4];
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

+ (int64_t)elementActionTypeForUIActionIdentifier:(id)a3
{
  if ([a3 isEqualToString:@"WKElementActionTypeCustom"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"WKElementActionTypeOpen"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"WKElementActionTypeCopy"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"WKElementActionTypeSaveImage"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"WKElementActionTypeAddToReadingList"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"WKElementActionTypeOpenInDefaultBrowser"])
  {
    return 5;
  }

  if ([a3 isEqualToString:@"WKElementActionTypeOpenInExternalApplication"])
  {
    return 6;
  }

  if ([a3 isEqualToString:@"WKElementActionTypeShare"])
  {
    return 7;
  }

  if ([a3 isEqualToString:@"WKElementActionTypeOpenInNewTab"])
  {
    return 8;
  }

  if ([a3 isEqualToString:@"WKElementActionTypeOpenInNewWindow"])
  {
    return 9;
  }

  if ([a3 isEqualToString:@"WKElementActionTypeDownload"])
  {
    return 10;
  }

  if ([a3 isEqualToString:@"WKElementActionTypeToggleShowLinkPreviews"])
  {
    return 11;
  }

  if ([a3 isEqualToString:@"WKElementActionTypeImageExtraction"])
  {
    return 12;
  }

  if ([a3 isEqualToString:@"WKElementActionTypeRevealImage"])
  {
    return 13;
  }

  if ([a3 isEqualToString:@"WKElementActionTypeCopySubject"])
  {
    return 14;
  }

  if ([a3 isEqualToString:@"WKElementActionPlayAnimation"])
  {
    return 15;
  }

  if ([a3 isEqualToString:@"WKElementActionPauseAnimation"])
  {
    return 16;
  }

  return 0;
}

- (id)uiActionForElementInfo:(id)a3
{
  v5 = [_WKElementAction imageForElementActionType:[(_WKElementAction *)self type]];
  v6 = elementActionTypeToUIActionIdentifier([(_WKElementAction *)self type]);
  v7 = MEMORY[0x1E69DC628];
  v8 = [(_WKElementAction *)self title];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3321888768;
  v19 = __43___WKElementAction_uiActionForElementInfo___block_invoke;
  v20 = &__block_descriptor_48_e8_32c56_ZTSKZ43___WKElementAction_uiActionForElementInfo__E3__2_e18_v16__0__UIAction_8l;
  if (self)
  {
    v9 = self;
  }

  if (a3)
  {
    v10 = a3;
  }

  v21 = self;
  if (self)
  {
    v11 = self;
  }

  v22 = a3;
  if (a3)
  {
    v12 = a3;
  }

  v13 = [v7 actionWithTitle:v8 image:v5 identifier:v6 handler:&v17];
  if (a3)
  {
  }

  if (self)
  {
  }

  if ([(_WKElementAction *)self disabled:v17])
  {
    [v13 setAttributes:{objc_msgSend(v13, "attributes") | 1}];
  }

  v14 = v22;
  v22 = 0;
  if (v14)
  {
  }

  v15 = v21;
  v21 = 0;
  if (v15)
  {
  }

  return v13;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 4) = 0;
  return self;
}

@end