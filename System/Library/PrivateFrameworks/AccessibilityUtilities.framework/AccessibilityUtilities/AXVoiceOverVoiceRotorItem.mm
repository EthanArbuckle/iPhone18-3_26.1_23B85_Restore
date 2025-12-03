@interface AXVoiceOverVoiceRotorItem
- (AXCVoiceSelection)selection;
- (AXVoiceOverVoiceRotorItem)init;
- (AXVoiceOverVoiceRotorItem)initWithIdentifier:(id)identifier selection:(id)selection userDefinedName:(id)name;
- (NSString)identifier;
- (NSString)userDefinedName;
- (NSString)voiceId;
- (void)setIdentifier:(id)identifier;
- (void)setSelection:(id)selection;
- (void)setUserDefinedName:(id)name;
- (void)setVoiceId:(id)id;
@end

@implementation AXVoiceOverVoiceRotorItem

- (NSString)identifier
{
  swift_beginAccess();

  v2 = sub_18B2C9864();

  return v2;
}

- (void)setIdentifier:(id)identifier
{
  v4 = sub_18B2C9894();
  v6 = v5;
  v7 = (self + OBJC_IVAR___AXVoiceOverVoiceRotorItem_identifier);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSString)userDefinedName
{
  v2 = self + OBJC_IVAR___AXVoiceOverVoiceRotorItem_userDefinedName;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_18B2C9864();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUserDefinedName:(id)name
{
  if (name)
  {
    v4 = sub_18B2C9894();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___AXVoiceOverVoiceRotorItem_userDefinedName);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSString)voiceId
{
  selfCopy = self;
  selection = [(AXVoiceOverVoiceRotorItem *)selfCopy selection];
  voiceId = [(AXCVoiceSelection *)selection voiceId];

  if (voiceId)
  {
    sub_18B2C9894();
  }

  else
  {
  }

  v5 = sub_18B2C9864();

  return v5;
}

- (void)setVoiceId:(id)id
{
  idCopy = id;
  selfCopy = self;
  selection = [(AXVoiceOverVoiceRotorItem *)selfCopy selection];
  [(AXCVoiceSelection *)selection setVoiceId:idCopy];
}

- (AXCVoiceSelection)selection
{
  v3 = OBJC_IVAR___AXVoiceOverVoiceRotorItem_selection;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSelection:(id)selection
{
  v5 = OBJC_IVAR___AXVoiceOverVoiceRotorItem_selection;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = selection;
  selectionCopy = selection;
}

- (AXVoiceOverVoiceRotorItem)initWithIdentifier:(id)identifier selection:(id)selection userDefinedName:(id)name
{
  v8 = sub_18B2C9894();
  v10 = v9;
  if (name)
  {
    name = sub_18B2C9894();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = (self + OBJC_IVAR___AXVoiceOverVoiceRotorItem_userDefinedName);
  *v13 = 0;
  v13[1] = 0;
  v14 = (self + OBJC_IVAR___AXVoiceOverVoiceRotorItem_identifier);
  *v14 = v8;
  v14[1] = v10;
  *(self + OBJC_IVAR___AXVoiceOverVoiceRotorItem_selection) = selection;
  swift_beginAccess();
  *v13 = name;
  v13[1] = v12;
  v17.receiver = self;
  v17.super_class = AXVoiceOverVoiceRotorItem;
  selectionCopy = selection;
  return [(AXVoiceOverVoiceRotorItem *)&v17 init];
}

- (AXVoiceOverVoiceRotorItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end