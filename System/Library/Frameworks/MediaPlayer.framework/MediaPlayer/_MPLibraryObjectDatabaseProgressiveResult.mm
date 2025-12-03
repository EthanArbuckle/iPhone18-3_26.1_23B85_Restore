@interface _MPLibraryObjectDatabaseProgressiveResult
- ($2F6F4602BBD9A38257A07259C79964DD)tokenForDatabase:(id)database;
@end

@implementation _MPLibraryObjectDatabaseProgressiveResult

- ($2F6F4602BBD9A38257A07259C79964DD)tokenForDatabase:(id)database
{
  v3 = *&self->_token.tokenRevision;
  tokenID = self->_token.tokenID;
  result.var1 = v3;
  result.var2 = HIDWORD(v3);
  result.var0 = tokenID;
  return result;
}

@end