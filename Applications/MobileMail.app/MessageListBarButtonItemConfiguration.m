@interface MessageListBarButtonItemConfiguration
- (BOOL)isBackVisible;
- (BOOL)isCancelVisible;
- (BOOL)isConfigureVisible;
- (BOOL)isEditVisible;
- (BOOL)isFilterVisible;
- (BOOL)isSelectAllVisible;
- (BOOL)isSelectVisible;
- (BOOL)isShelfVisible;
- (_TtC10MobileMail37MessageListBarButtonItemConfiguration)initWithIsEditVisible:(BOOL)a3 isSelectVisible:(BOOL)a4 isSelectAllVisible:(BOOL)a5 isCancelVisible:(BOOL)a6 isConfigureVisible:(BOOL)a7 isFilterVisible:(BOOL)a8 isShelfVisible:(BOOL)a9 isBackVisible:(BOOL)a10;
@end

@implementation MessageListBarButtonItemConfiguration

- (BOOL)isEditVisible
{
  _objc_retain(self);
  sub_1003B8170();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)isSelectVisible
{
  _objc_retain(self);
  sub_1003B8200();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)isSelectAllVisible
{
  _objc_retain(self);
  sub_1003B8290();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)isCancelVisible
{
  _objc_retain(self);
  sub_1003B8320();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)isConfigureVisible
{
  _objc_retain(self);
  sub_1003B83B0();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)isFilterVisible
{
  _objc_retain(self);
  sub_1003B8440();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)isShelfVisible
{
  _objc_retain(self);
  sub_1003B84D0();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)isBackVisible
{
  _objc_retain(self);
  sub_1003B8560();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (_TtC10MobileMail37MessageListBarButtonItemConfiguration)initWithIsEditVisible:(BOOL)a3 isSelectVisible:(BOOL)a4 isSelectAllVisible:(BOOL)a5 isCancelVisible:(BOOL)a6 isConfigureVisible:(BOOL)a7 isFilterVisible:(BOOL)a8 isShelfVisible:(BOOL)a9 isBackVisible:(BOOL)a10
{
  v18 = _convertObjCBoolToBool(_:)();
  v12 = _convertObjCBoolToBool(_:)();
  v13 = _convertObjCBoolToBool(_:)();
  v14 = _convertObjCBoolToBool(_:)();
  v15 = _convertObjCBoolToBool(_:)();
  v16 = _convertObjCBoolToBool(_:)();
  v17 = _convertObjCBoolToBool(_:)();
  v10 = _convertObjCBoolToBool(_:)();
  return sub_1003B861C(v18 & 1, v12 & 1, v13 & 1, v14 & 1, v15 & 1, v16 & 1, v17 & 1, v10 & 1);
}

@end