@interface WKElementAction
@end

@implementation WKElementAction

uint64_t __74___WKElementAction__elementActionWithType_customTitle_assistant_disabled___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 URL];
  v5 = [a3 title];
  if (!v5 || (v6 = v5, ![v5 length]))
  {
    v6 = [v4 absoluteString];
  }

  v7 = [getSSReadingListClass() defaultReadingList];

  return [v7 addReadingListItemWithURL:v4 title:v6 previewText:0 error:0];
}

uint64_t __43___WKElementAction_uiActionForElementInfo___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = qword_1ED6409A0;
  if (os_log_type_enabled(qword_1ED6409A0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = -[__CFString UTF8String](elementActionTypeToUIActionIdentifier([v2 type]), "UTF8String");
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "Executing action for type: %s", &v5, 0xCu);
  }

  return [v2 runActionWithElementInfo:*(a1 + 40)];
}

@end