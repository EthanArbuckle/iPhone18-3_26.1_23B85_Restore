@interface INIssueSandboxExtension
@end

@implementation INIssueSandboxExtension

uint64_t ___INIssueSandboxExtension_block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x1E69E9BB0];
  v3 = [a2 path];
  [v3 fileSystemRepresentation];
  v4 = *MEMORY[0x1E69E9BE0];
  v5 = sandbox_extension_issue_file();

  return v5;
}

@end