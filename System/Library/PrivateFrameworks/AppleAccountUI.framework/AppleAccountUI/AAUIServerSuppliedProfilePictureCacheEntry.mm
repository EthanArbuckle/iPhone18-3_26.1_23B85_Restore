@interface AAUIServerSuppliedProfilePictureCacheEntry
- (BOOL)expired;
- (id)description;
- (void)extendExpirationDate;
- (void)setPicture:(id)picture;
@end

@implementation AAUIServerSuppliedProfilePictureCacheEntry

- (void)setPicture:(id)picture
{
  pictureCopy = picture;
  date = [MEMORY[0x1E695DF00] date];
  v6 = [date dateByAddingTimeInterval:3600.0];
  expirationDate = self->_expirationDate;
  self->_expirationDate = v6;

  picture = self->_picture;
  self->_picture = pictureCopy;
}

- (BOOL)expired
{
  if (!self->_expirationDate)
  {
    return 1;
  }

  date = [MEMORY[0x1E695DF00] date];
  v4 = [date compare:self->_expirationDate] == 1;

  return v4;
}

- (void)extendExpirationDate
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [date dateByAddingTimeInterval:3600.0];
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