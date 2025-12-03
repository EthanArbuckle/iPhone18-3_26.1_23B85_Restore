@interface ASDCoastGuard
- (BOOL)isUnrepairableAppWithItemID:(unint64_t)d externalVersionID:(unint64_t)iD;
@end

@implementation ASDCoastGuard

- (BOOL)isUnrepairableAppWithItemID:(unint64_t)d externalVersionID:(unint64_t)iD
{
  v19 = *MEMORY[0x1E69E9840];
  if (d <= 0x52E12BCD && iD <= 0x31E2A03E)
  {
    dCopy = d;
    deadlistItemIDs = self->_deadlistItemIDs;
    if (deadlistItemIDs)
    {
LABEL_10:
      __key = dCopy;
      result = bsearch_b(&__key, [(NSData *)deadlistItemIDs bytes], [(NSData *)self->_deadlistItemIDs length]>> 2, 4uLL, &__block_literal_global_27) != 0;
      goto LABEL_11;
    }

    v9 = [MEMORY[0x1E696AAE8] bundleWithPath:{@"/System/Library/PrivateFrameworks/AppStoreDaemon.framework", iD}];
    resourceURL = [v9 resourceURL];
    v11 = [resourceURL URLByAppendingPathComponent:@"DeadlistItemIDs.bin" isDirectory:0];

    v16 = 0;
    v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v11 options:10 error:&v16];
    v13 = self->_deadlistItemIDs;
    self->_deadlistItemIDs = v12;

    if (self->_deadlistItemIDs)
    {

      deadlistItemIDs = self->_deadlistItemIDs;
      goto LABEL_10;
    }

    v15 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      __key = 138543362;
      v18 = v16;
      _os_log_fault_impl(&dword_1B8220000, v15, OS_LOG_TYPE_FAULT, "Unable to load deadlist: %{public}@", &__key, 0xCu);
    }
  }

  result = 0;
LABEL_11:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

@end