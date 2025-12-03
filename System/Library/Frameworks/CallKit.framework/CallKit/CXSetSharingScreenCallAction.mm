@interface CXSetSharingScreenCallAction
- (CXSetSharingScreenCallAction)initWithCallUUID:(id)d sharingScreen:(BOOL)screen;
- (CXSetSharingScreenCallAction)initWithCoder:(id)coder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXSetSharingScreenCallAction

- (CXSetSharingScreenCallAction)initWithCallUUID:(id)d sharingScreen:(BOOL)screen
{
  v6.receiver = self;
  v6.super_class = CXSetSharingScreenCallAction;
  result = [(CXCallAction *)&v6 initWithCallUUID:d];
  if (result)
  {
    result->_sharingScreen = screen;
  }

  return result;
}

- (id)customDescription
{
  v6.receiver = self;
  v6.super_class = CXSetSharingScreenCallAction;
  customDescription = [(CXCallAction *)&v6 customDescription];
  [customDescription appendFormat:@" sharingScreen=%d", -[CXSetSharingScreenCallAction isSharingScreen](self, "isSharingScreen")];
  attributes = [(CXSetSharingScreenCallAction *)self attributes];
  [customDescription appendFormat:@" attributes=%@", attributes];

  return customDescription;
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = CXSetSharingScreenCallAction;
  copyCopy = copy;
  [(CXCallAction *)&v9 updateSanitizedCopy:copyCopy withZone:zone];
  [copyCopy setSharingScreen:{-[CXSetSharingScreenCallAction isSharingScreen](self, "isSharingScreen", v9.receiver, v9.super_class)}];
  attributes = [(CXSetSharingScreenCallAction *)self attributes];
  v8 = [attributes copy];
  [copyCopy setAttributes:v8];
}

- (CXSetSharingScreenCallAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CXSetSharingScreenCallAction;
  v5 = [(CXCallAction *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isSharingScreen);
    v5->_sharingScreen = [coderCopy decodeBoolForKey:v6];

    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_attributes);
    v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8];
    attributes = v5->_attributes;
    v5->_attributes = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = CXSetSharingScreenCallAction;
  coderCopy = coder;
  [(CXCallAction *)&v9 encodeWithCoder:coderCopy];
  v5 = [(CXSetSharingScreenCallAction *)self isSharingScreen:v9.receiver];
  v6 = NSStringFromSelector(sel_isSharingScreen);
  [coderCopy encodeBool:v5 forKey:v6];

  attributes = [(CXSetSharingScreenCallAction *)self attributes];
  v8 = NSStringFromSelector(sel_attributes);
  [coderCopy encodeObject:attributes forKey:v8];
}

@end