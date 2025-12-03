@interface MessageListBarButtonItemConfigurationManagerState
- (BOOL)isAllMailSelected;
- (BOOL)isBlackPearlEnabled;
- (BOOL)isBucketBarHidden;
- (BOOL)isCatchUpAvailable;
- (BOOL)isCompactSizeClass;
- (BOOL)isEditing;
- (BOOL)isFiltered;
- (BOOL)isGroupedBySender;
- (BOOL)isInbox;
- (BOOL)isPad;
- (BOOL)isSearching;
- (BOOL)isSolariumEnabled;
- (BOOL)mailboxSupportsSelectAll;
- (BOOL)prefersNewSelectButton;
- (_TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState)initWithIsEditing:(BOOL)editing isSearching:(BOOL)searching isInbox:(BOOL)inbox isFiltered:(BOOL)filtered mailboxSupportsSelectAll:(BOOL)all isBucketBarHidden:(BOOL)hidden isAllMailSelected:(BOOL)selected isGroupedBySender:(BOOL)self0 prefersNewSelectButton:(BOOL)self1 isPad:(BOOL)self2 isCompactSizeClass:(BOOL)self3 isSolariumEnabled:(BOOL)self4 isBlackPearlEnabled:(BOOL)self5 isCatchUpAvailable:(BOOL)self6 connectedScenes:(int64_t)self7;
- (int64_t)connectedScenes;
@end

@implementation MessageListBarButtonItemConfigurationManagerState

- (BOOL)isEditing
{
  _objc_retain(self);
  sub_1003B5180();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)isSearching
{
  _objc_retain(self);
  sub_1003B5210();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)isInbox
{
  _objc_retain(self);
  sub_1003B52A0();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)isPad
{
  _objc_retain(self);
  sub_1003B5330();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)isCompactSizeClass
{
  _objc_retain(self);
  sub_1003B53C0();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)isFiltered
{
  _objc_retain(self);
  sub_1003B5450();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)mailboxSupportsSelectAll
{
  _objc_retain(self);
  sub_1003B54E0();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)isBucketBarHidden
{
  _objc_retain(self);
  sub_1003B5570();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)isAllMailSelected
{
  _objc_retain(self);
  sub_1003B5600();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)isGroupedBySender
{
  _objc_retain(self);
  sub_1003B5690();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)prefersNewSelectButton
{
  _objc_retain(self);
  sub_1003B5720();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)isSolariumEnabled
{
  _objc_retain(self);
  sub_1003B57B0();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)isBlackPearlEnabled
{
  _objc_retain(self);
  sub_1003B5840();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)isCatchUpAvailable
{
  _objc_retain(self);
  sub_1003B58D0();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (int64_t)connectedScenes
{
  _objc_retain(self);
  v4 = sub_1003B5954();
  _objc_release(self);
  return v4;
}

- (_TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState)initWithIsEditing:(BOOL)editing isSearching:(BOOL)searching isInbox:(BOOL)inbox isFiltered:(BOOL)filtered mailboxSupportsSelectAll:(BOOL)all isBucketBarHidden:(BOOL)hidden isAllMailSelected:(BOOL)selected isGroupedBySender:(BOOL)self0 prefersNewSelectButton:(BOOL)self1 isPad:(BOOL)self2 isCompactSizeClass:(BOOL)self3 isSolariumEnabled:(BOOL)self4 isBlackPearlEnabled:(BOOL)self5 isCatchUpAvailable:(BOOL)self6 connectedScenes:(int64_t)self7
{
  v31 = _convertObjCBoolToBool(_:)();
  v24 = _convertObjCBoolToBool(_:)();
  v25 = _convertObjCBoolToBool(_:)();
  v26 = _convertObjCBoolToBool(_:)();
  v27 = _convertObjCBoolToBool(_:)();
  v28 = _convertObjCBoolToBool(_:)();
  v29 = _convertObjCBoolToBool(_:)();
  v30 = _convertObjCBoolToBool(_:)();
  v19 = _convertObjCBoolToBool(_:)();
  v20 = _convertObjCBoolToBool(_:)();
  v21 = _convertObjCBoolToBool(_:)();
  v22 = _convertObjCBoolToBool(_:)();
  v23 = _convertObjCBoolToBool(_:)();
  v17 = _convertObjCBoolToBool(_:)();
  return sub_1003B5A80(v31 & 1, v24 & 1, v25 & 1, v26 & 1, v27 & 1, v28 & 1, v29 & 1, v30 & 1, v19 & 1, v20 & 1, v21 & 1, v22 & 1, v23 & 1, v17 & 1, scenes);
}

@end