@interface AXAudioEffectConfiguration
- (BOOL)enabled;
- (NSString)effectName;
- (NSUUID)identifier;
- (void)encodeWithCoder:(id)a3;
- (void)setEffectName:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setIdentifier:(id)a3;
- (void)set_identifier:(id)a3;
@end

@implementation AXAudioEffectConfiguration

- (void)set_identifier:(id)a3
{
  v4 = *(self + OBJC_IVAR___AXAudioEffectConfiguration__identifier);
  *(self + OBJC_IVAR___AXAudioEffectConfiguration__identifier) = a3;
  v3 = a3;
}

- (NSUUID)identifier
{
  v3 = sub_19166B1C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = self;
  v10 = [(AXAudioEffectConfiguration *)v9 _identifier];
  sub_19166B1A8();

  v11 = sub_19166B188();
  (*(v4 + 8))(v8, v3);

  return v11;
}

- (void)setIdentifier:(id)a3
{
  v4 = sub_19166B1C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19166B1A8();
  v10 = self;
  v11 = sub_19166B188();
  [(AXAudioEffectConfiguration *)v10 set_identifier:v11];

  (*(v5 + 8))(v9, v4);
}

- (NSString)effectName
{
  v2 = (self + OBJC_IVAR___AXAudioEffectConfiguration_effectName);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_19166B718();

  return v5;
}

- (void)setEffectName:(id)a3
{
  v4 = sub_19166B748();
  v6 = v5;
  v7 = (self + OBJC_IVAR___AXAudioEffectConfiguration_effectName);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (BOOL)enabled
{
  v3 = OBJC_IVAR___AXAudioEffectConfiguration_enabled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEnabled:(BOOL)a3
{
  v5 = OBJC_IVAR___AXAudioEffectConfiguration_enabled;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  AXAudioEffectConfiguration.encode(with:)(v4);
}

@end