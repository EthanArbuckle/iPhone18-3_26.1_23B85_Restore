@interface SFNavigationBarURLButton
@end

@implementation SFNavigationBarURLButton

void __110___SFNavigationBarURLButton__scribbleInteraction_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __110___SFNavigationBarURLButton__scribbleInteraction_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke_cold_1();
  }

  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) textFieldForNavigationBarURLButton:*(a1 + 40)];
  (*(v3 + 16))(v3, v4);
}

@end