@interface MFAtomFieldEditor
@end

@implementation MFAtomFieldEditor

void __45___MFAtomFieldEditor_selectionRectsForRange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v16 = objc_alloc_init(_MFAtomViewTextSelectionRect);
  [(_MFAtomViewTextSelectionRect *)v16 setRect:a5, a6, a7, a8];
  [(_MFAtomViewTextSelectionRect *)v16 setWritingDirection:a2];
  [(_MFAtomViewTextSelectionRect *)v16 setContainsStart:a3];
  [(_MFAtomViewTextSelectionRect *)v16 setContainsEnd:a4];
  [*(a1 + 32) addObject:v16];
}

void __45___MFAtomFieldEditor_selectionRectsForRange___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 56);
  v9 = a3 == v8;
  v10 = a3 + a4;
  v11 = *(a1 + 64) + v8;
  v12 = a3 + a4 == v11;
  v31 = v7;
  v13 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DB5F8]];
  v30 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v13 atomView];
    v15 = *(a1 + 32);
    [v14 selectionBounds];
    [v15 convertRect:v14 fromView:?];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __45___MFAtomFieldEditor_selectionRectsForRange___block_invoke_3;
    aBlock[3] = &__block_descriptor_64_e39__CGRect__CGPoint_dd__CGSize_dd__12__0B8l;
    aBlock[4] = v16;
    aBlock[5] = v17;
    aBlock[6] = v18;
    aBlock[7] = v19;
    v20 = _Block_copy(aBlock);
    v21 = *(a1 + 32);
    v22 = [v21 beginningOfDocument];
    v23 = [v21 positionFromPosition:v22 offset:a3];
    v24 = [v21 baseWritingDirectionForPosition:v23 inDirection:0];

    if (a3 == v8)
    {
      (v20)[2](v20, v24 == 1);
      (*(*(a1 + 48) + 16))();
    }

    if (v10 == v11)
    {
      (v20)[2](v20, v24 != 1);
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v25 = *(a1 + 32);
    v26 = [v25 beginningOfDocument];
    v14 = [v25 positionFromPosition:v26 offset:a3];

    v20 = [*(a1 + 32) positionFromPosition:v14 offset:a4];
    v27 = [*(a1 + 32) textRangeFromPosition:v14 toPosition:v20];
    v35.receiver = *(a1 + 32);
    v35.super_class = _MFAtomFieldEditor;
    v28 = objc_msgSendSuper2(&v35, sel_selectionRectsForRange_, v27);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __45___MFAtomFieldEditor_selectionRectsForRange___block_invoke_4;
    v32[3] = &__block_descriptor_34_e29_B16__0__UITextSelectionRect_8l;
    v33 = v9;
    v34 = v12;
    v29 = [v28 ef_filter:v32];

    [*(a1 + 40) addObjectsFromArray:v29];
  }
}

double __45___MFAtomFieldEditor_selectionRectsForRange___block_invoke_3(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (a2)
  {
    return result + *(a1 + 48);
  }

  return result;
}

BOOL __45___MFAtomFieldEditor_selectionRectsForRange___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = ((*(a1 + 32) & 1) != 0 || ([v3 containsStart] & 1) == 0) && ((*(a1 + 33) & 1) != 0 || (objc_msgSend(v4, "containsEnd") & 1) == 0);

  return v5;
}

@end