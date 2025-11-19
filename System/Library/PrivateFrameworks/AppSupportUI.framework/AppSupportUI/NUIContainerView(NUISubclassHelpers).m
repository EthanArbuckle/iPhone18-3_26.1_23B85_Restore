@interface NUIContainerView(NUISubclassHelpers)
@end

@implementation NUIContainerView(NUISubclassHelpers)

- (uint64_t)visibilityDidChangeForArrangedSubview:()NUISubclassHelpers .cold.2(unsigned __int16 *a1, uint64_t a2)
{
  v2 = *a1;
  result = [(NUIContainerView *)a2 _countHiddenArrangesSubviews];
  if (v2 != result)
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerView.mm"];
    OUTLINED_FUNCTION_12();
    [MEMORY[0x277CCA890] currentHandler];
    OUTLINED_FUNCTION_0_1();

    return [v4 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
  }

  return result;
}

- (void)layoutFrameForArrangedSubview:()NUISubclassHelpers withProposedContentFrame:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21D09E000, a2, OS_LOG_TYPE_ERROR, "View is not an arranged subviews %@.", &v2, 0xCu);
}

@end