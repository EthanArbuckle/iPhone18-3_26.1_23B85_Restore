@interface AAUIServerSuppliedProfilePictureCacheEntry
- (BOOL)expired;
- (id)description;
- (void)extendExpirationDate;
- (void)setPicture:(id)a3;
@end

@implementation AAUIServerSuppliedProfilePictureCacheEntry

- (void)setPicture:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v5 dateByAddingTimeInterval:3600.0];
  expirationDate = self->_expirationDate;
  self->_expirationDate = v6;

  picture = self->_picture;
  self->_picture = v4;
}

- (BOOL)expired
{
  if (!self->_expirationDate)
  {
    return 1;
  }

  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [v3 compare:self->_expirationDate] == 1;

  return v4;
}

- (void)extendExpirationDate
{
  v5 = [MEMORY[0x1E695DF00] date];
  v3 = [v5 dateByAddingTimeInterval:3600.0];
  expirationDate = self->_expirationDate;
  self->_expirationDate = v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  picture = self->_picture;
  serverCacheTag = self->_serverCacheTag;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_updating];
  v7 = [v3 stringWithFormat:@"<AAUIServerSuppliedProfilePictureCacheEntry: %p picture %@ serverCacheTag %@ updating %@ _expirationDate %@ >", self, picture, serverCacheTag, v6, self->_expirationDate];

  return v7;
}

@end