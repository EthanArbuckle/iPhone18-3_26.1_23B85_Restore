@interface NSAttributedString(NSAttributedStringWebKitAdditions)
+ (uint64_t)loadFromHTMLWithData:()NSAttributedStringWebKitAdditions options:completionHandler:;
+ (uint64_t)loadFromHTMLWithFileURL:()NSAttributedStringWebKitAdditions options:completionHandler:;
+ (uint64_t)loadFromHTMLWithRequest:()NSAttributedStringWebKitAdditions options:completionHandler:;
+ (uint64_t)loadFromHTMLWithString:()NSAttributedStringWebKitAdditions options:completionHandler:;
@end

@implementation NSAttributedString(NSAttributedStringWebKitAdditions)

+ (uint64_t)loadFromHTMLWithRequest:()NSAttributedStringWebKitAdditions options:completionHandler:
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __107__NSAttributedString_NSAttributedStringWebKitAdditions__loadFromHTMLWithRequest_options_completionHandler___block_invoke;
  v5[3] = &unk_1E76311E0;
  v5[4] = a3;
  return [self _loadFromHTMLWithOptions:a4 contentLoader:v5 completionHandler:?];
}

+ (uint64_t)loadFromHTMLWithFileURL:()NSAttributedStringWebKitAdditions options:completionHandler:
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __107__NSAttributedString_NSAttributedStringWebKitAdditions__loadFromHTMLWithFileURL_options_completionHandler___block_invoke;
  v5[3] = &unk_1E7631208;
  v5[4] = a4;
  v5[5] = a3;
  return [self _loadFromHTMLWithOptions:a4 contentLoader:v5 completionHandler:?];
}

+ (uint64_t)loadFromHTMLWithString:()NSAttributedStringWebKitAdditions options:completionHandler:
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __106__NSAttributedString_NSAttributedStringWebKitAdditions__loadFromHTMLWithString_options_completionHandler___block_invoke;
  v5[3] = &unk_1E7631208;
  v5[4] = a4;
  v5[5] = a3;
  return [self _loadFromHTMLWithOptions:a4 contentLoader:v5 completionHandler:?];
}

+ (uint64_t)loadFromHTMLWithData:()NSAttributedStringWebKitAdditions options:completionHandler:
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __104__NSAttributedString_NSAttributedStringWebKitAdditions__loadFromHTMLWithData_options_completionHandler___block_invoke;
  v5[3] = &unk_1E7631208;
  v5[4] = a4;
  v5[5] = a3;
  return [self _loadFromHTMLWithOptions:a4 contentLoader:v5 completionHandler:?];
}

@end