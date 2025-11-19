@interface PKSqueezePaletteViewSwitchToEraserAction
- (void)initWitEraserToolIndex:(uint64_t)a3 toolsCount:;
- (void)performAction;
@end

@implementation PKSqueezePaletteViewSwitchToEraserAction

- (void)initWitEraserToolIndex:(uint64_t)a3 toolsCount:
{
  if (result)
  {
    v5.receiver = result;
    v5.super_class = PKSqueezePaletteViewSwitchToEraserAction;
    result = objc_msgSendSuper2(&v5, sel_init);
    if (result)
    {
      result[3] = a2;
      result[4] = 0x7FFFFFFFFFFFFFFFLL;
      result[1] = 0x7FFFFFFFFFFFFFFFLL;
      result[2] = a3;
    }
  }

  return result;
}

- (void)performAction
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Perform switch to eraser action.", &v9, 2u);
    }

    v3 = a1[4];
    v4 = a1 + 3;
    if (a1[3] == v3)
    {
      v5 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = a1[4];
        v9 = 134283521;
        v10 = v6;
        _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Switch to last selected tool, current selected tool index: %{private}lu", &v9, 0xCu);
      }

      v4 = a1 + 1;
    }

    else
    {
      a1[1] = v3;
      v7 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[1];
        v9 = 134283521;
        v10 = v8;
        _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Switch to eraser tool, last selected tool index: %{private}lu", &v9, 0xCu);
      }
    }

    a1[4] = *v4;
  }
}

@end