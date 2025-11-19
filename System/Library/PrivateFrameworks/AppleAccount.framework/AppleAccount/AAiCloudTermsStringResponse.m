@interface AAiCloudTermsStringResponse
- (NSString)termsString;
@end

@implementation AAiCloudTermsStringResponse

- (NSString)termsString
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->super._responseTermsDictionary objectForKey:@"iCloud"];
  v3 = _AALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_1B6F6A000, v3, OS_LOG_TYPE_DEFAULT, "Got terms string: %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

@end