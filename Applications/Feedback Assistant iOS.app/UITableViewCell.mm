@interface UITableViewCell
- (void)configureWithBugFormStub:(id)stub isSelected:(BOOL)selected;
@end

@implementation UITableViewCell

- (void)configureWithBugFormStub:(id)stub isSelected:(BOOL)selected
{
  stubCopy = stub;
  selfCopy = self;
  sub_100080244(stubCopy, selected);
}

@end