@interface MFComposeRecipient(NSItemProvider)
@end

@implementation MFComposeRecipient(NSItemProvider)

+ (void)objectWithItemProviderData:()NSItemProvider typeIdentifier:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BE819000, a2, OS_LOG_TYPE_ERROR, "Failed to decode a compose recipient: %@", &v2, 0xCu);
}

@end