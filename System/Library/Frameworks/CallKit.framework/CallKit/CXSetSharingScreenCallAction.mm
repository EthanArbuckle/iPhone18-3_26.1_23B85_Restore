@interface CXSetSharingScreenCallAction
- (CXSetSharingScreenCallAction)initWithCallUUID:(id)a3 sharingScreen:(BOOL)a4;
- (CXSetSharingScreenCallAction)initWithCoder:(id)a3;
- (id)customDescription;
- (void)encodeWithCoder:(id)a3;
- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXSetSharingScreenCallAction

- (CXSetSharingScreenCallAction)initWithCallUUID:(id)a3 sharingScreen:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = CXSetSharingScreenCallAction;
  result = [(CXCallAction *)&v6 initWithCallUUID:a3];
  if (result)
  {
    result->_sharingScreen = a4;
  }

  return result;
}

- (id)customDescription
{
  v6.receiver = self;
  v6.super_class = CXSetSharingScreenCallAction;
  v3 = [(CXCallAction *)&v6 customDescription];
  [v3 appendFormat:@" sharingScreen=%d", -[CXSetSharingScreenCallAction isSharingScreen](self, "isSharingScreen")];
  v4 = [(CXSetSharingScreenCallAction *)self attributes];
  [v3 appendFormat:@" attributes=%@", v4];

  return v3;
}

- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4
{
  v9.receiver = self;
  v9.super_class = CXSetSharingScreenCallAction;
  v6 = a3;
  [(CXCallAction *)&v9 updateSanitizedCopy:v6 withZone:a4];
  [v6 setSharingScreen:{-[CXSetSharingScreenCallAction isSharingScreen](self, "isSharingScreen", v9.receiver, v9.super_class)}];
  v7 = [(CXSetSharingScreenCallAction *)self attributes];
  v8 = [v7 copy];
  [v6 setAttributes:v8];
}

- (CXSetSharingScreenCallAction)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CXSetSharingScreenCallAction;
  v5 = [(CXCallAction *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isSharingScreen);
    v5->_sharingScreen = [v4 decodeBoolForKey:v6];

    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_attributes);
    v9 = [v4 decodeObjectOfClass:v7 forKey:v8];
    attributes = v5->_attributes;
    v5->_attributes = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = CXSetSharingScreenCallAction;
  v4 = a3;
  [(CXCallAction *)&v9 encodeWithCoder:v4];
  v5 = [(CXSetSharingScreenCallAction *)self isSharingScreen:v9.receiver];
  v6 = NSStringFromSelector(sel_isSharingScreen);
  [v4 encodeBool:v5 forKey:v6];

  v7 = [(CXSetSharingScreenCallAction *)self attributes];
  v8 = NSStringFromSelector(sel_attributes);
  [v4 encodeObject:v7 forKey:v8];
}

@end