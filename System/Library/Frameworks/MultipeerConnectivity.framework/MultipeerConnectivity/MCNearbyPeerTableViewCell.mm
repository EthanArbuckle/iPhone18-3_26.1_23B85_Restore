@interface MCNearbyPeerTableViewCell
- (MCNearbyPeerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation MCNearbyPeerTableViewCell

- (MCNearbyPeerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  result = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "loadNibNamed:owner:options:", @"MCNearbyPeerTableViewCell", self, 0), "objectAtIndex:", 0}];
  if (!result)
  {
    v7.receiver = 0;
    v7.super_class = MCNearbyPeerTableViewCell;
    return [(MCNearbyPeerTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  }

  return result;
}

@end