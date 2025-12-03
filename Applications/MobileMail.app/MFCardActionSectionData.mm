@interface MFCardActionSectionData
- (MFCardActionSectionData)initWithActions:(id)actions viewLayout:(int64_t)layout;
@end

@implementation MFCardActionSectionData

- (MFCardActionSectionData)initWithActions:(id)actions viewLayout:(int64_t)layout
{
  actionsCopy = actions;
  v11.receiver = self;
  v11.super_class = MFCardActionSectionData;
  v7 = [(MFCardActionSectionData *)&v11 init];
  if (v7)
  {
    v8 = [actionsCopy copy];
    actions = v7->_actions;
    v7->_actions = v8;

    v7->_viewLayout = layout;
  }

  return v7;
}

@end