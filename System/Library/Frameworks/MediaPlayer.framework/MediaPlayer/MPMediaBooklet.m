@interface MPMediaBooklet
- (id)description;
@end

@implementation MPMediaBooklet

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MPMediaBooklet *)self name];
  v6 = [v3 stringWithFormat:@"<%@: %p ['%@', storeID=%lld]>", v4, self, v5, -[MPMediaBooklet storeItemID](self, "storeItemID")];

  return v6;
}

@end