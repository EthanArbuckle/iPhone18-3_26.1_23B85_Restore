@interface MFCardActionSectionData
- (MFCardActionSectionData)initWithActions:(id)a3 viewLayout:(int64_t)a4;
@end

@implementation MFCardActionSectionData

- (MFCardActionSectionData)initWithActions:(id)a3 viewLayout:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MFCardActionSectionData;
  v7 = [(MFCardActionSectionData *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    actions = v7->_actions;
    v7->_actions = v8;

    v7->_viewLayout = a4;
  }

  return v7;
}

@end