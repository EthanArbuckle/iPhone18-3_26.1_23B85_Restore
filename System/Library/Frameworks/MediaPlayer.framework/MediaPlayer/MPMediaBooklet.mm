@interface MPMediaBooklet
- (id)description;
@end

@implementation MPMediaBooklet

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(MPMediaBooklet *)self name];
  v6 = [v3 stringWithFormat:@"<%@: %p ['%@', storeID=%lld]>", v4, self, name, -[MPMediaBooklet storeItemID](self, "storeItemID")];

  return v6;
}

@end