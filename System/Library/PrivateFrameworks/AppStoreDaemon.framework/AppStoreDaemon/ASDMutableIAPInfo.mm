@interface ASDMutableIAPInfo
- (void)setExpirationTimestamp:(id)timestamp;
- (void)setLastModifiedTimestamp:(id)timestamp;
- (void)setPurchaseTimestamp:(id)timestamp;
@end

@implementation ASDMutableIAPInfo

- (void)setExpirationTimestamp:(id)timestamp
{
  v4 = MEMORY[0x1E695DF00];
  [timestamp doubleValue];
  v5 = [v4 dateWithTimeIntervalSince1970:?];
  [(ASDIAPInfo *)self setExpirationDate:v5];
}

- (void)setLastModifiedTimestamp:(id)timestamp
{
  v4 = MEMORY[0x1E695DF00];
  [timestamp doubleValue];
  v5 = [v4 dateWithTimeIntervalSince1970:?];
  [(ASDIAPInfo *)self setLastModifiedDate:v5];
}

- (void)setPurchaseTimestamp:(id)timestamp
{
  v4 = MEMORY[0x1E695DF00];
  [timestamp doubleValue];
  v5 = [v4 dateWithTimeIntervalSince1970:?];
  [(ASDIAPInfo *)self setPurchaseDate:v5];
}

@end