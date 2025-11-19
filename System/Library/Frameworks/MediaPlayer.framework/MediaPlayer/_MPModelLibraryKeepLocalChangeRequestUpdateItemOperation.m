@interface _MPModelLibraryKeepLocalChangeRequestUpdateItemOperation
- (void)execute;
@end

@implementation _MPModelLibraryKeepLocalChangeRequestUpdateItemOperation

- (void)execute
{
  v2 = self;
  mediaItem = v2->_mediaItem;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2->_keepLocalConstraints];
  [(MPMediaItem *)mediaItem setValue:v4 forProperty:@"keepLocalConstraints"];

  v5 = v2->_mediaItem;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v2->_keepLocal];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67___MPModelLibraryKeepLocalChangeRequestUpdateItemOperation_execute__block_invoke;
  v8[3] = &unk_1E767B220;
  v9 = v2;
  v7 = v2;
  [(MPMediaItem *)v5 setValue:v6 forProperty:@"keepLocal" withCompletionBlock:v8];
}

@end