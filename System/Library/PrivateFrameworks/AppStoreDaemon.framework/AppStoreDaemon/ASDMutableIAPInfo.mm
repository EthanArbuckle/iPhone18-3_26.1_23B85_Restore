@interface ASDMutableIAPInfo
- (void)setExpirationTimestamp:(id)a3;
- (void)setLastModifiedTimestamp:(id)a3;
- (void)setPurchaseTimestamp:(id)a3;
@end

@implementation ASDMutableIAPInfo

- (void)setExpirationTimestamp:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  [a3 doubleValue];
  v5 = [v4 dateWithTimeIntervalSince1970:?];
  [(ASDIAPInfo *)self setExpirationDate:v5];
}

- (void)setLastModifiedTimestamp:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  [a3 doubleValue];
  v5 = [v4 dateWithTimeIntervalSince1970:?];
  [(ASDIAPInfo *)self setLastModifiedDate:v5];
}

- (void)setPurchaseTimestamp:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  [a3 doubleValue];
  v5 = [v4 dateWithTimeIntervalSince1970:?];
  [(ASDIAPInfo *)self setPurchaseDate:v5];
}

@end