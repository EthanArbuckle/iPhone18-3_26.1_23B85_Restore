@interface _MPModelLibraryKeepLocalChangeRequestUpdateItemOperation
- (void)execute;
@end

@implementation _MPModelLibraryKeepLocalChangeRequestUpdateItemOperation

- (void)execute
{
  selfCopy = self;
  mediaItem = selfCopy->_mediaItem;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:selfCopy->_keepLocalConstraints];
  [(MPMediaItem *)mediaItem setValue:v4 forProperty:@"keepLocalConstraints"];

  v5 = selfCopy->_mediaItem;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:selfCopy->_keepLocal];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67___MPModelLibraryKeepLocalChangeRequestUpdateItemOperation_execute__block_invoke;
  v8[3] = &unk_1E767B220;
  v9 = selfCopy;
  v7 = selfCopy;
  [(MPMediaItem *)v5 setValue:v6 forProperty:@"keepLocal" withCompletionBlock:v8];
}

@end