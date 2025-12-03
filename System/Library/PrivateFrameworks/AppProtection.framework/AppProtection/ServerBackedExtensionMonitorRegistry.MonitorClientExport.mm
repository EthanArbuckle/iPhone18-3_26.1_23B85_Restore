@interface ServerBackedExtensionMonitorRegistry.MonitorClientExport
- (_TtCC13AppProtection36ServerBackedExtensionMonitorRegistryP33_0D76BCD90F39FFE5BC347065C6051DB119MonitorClientExport)init;
- (void)extensionMonitorWithUUID:(id)d lockedStatusUpdate:(BOOL)update;
@end

@implementation ServerBackedExtensionMonitorRegistry.MonitorClientExport

- (_TtCC13AppProtection36ServerBackedExtensionMonitorRegistryP33_0D76BCD90F39FFE5BC347065C6051DB119MonitorClientExport)init
{
  swift_weakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for ServerBackedExtensionMonitorRegistry.MonitorClientExport();
  return [(ServerBackedExtensionMonitorRegistry.MonitorClientExport *)&v4 init];
}

- (void)extensionMonitorWithUUID:(id)d lockedStatusUpdate:(BOOL)update
{
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_185B67ADC();
  if (swift_weakLoadStrong())
  {
    selfCopy = self;
    sub_185B07E0C(v11, update);
  }

  (*(v7 + 8))(v11, v6);
}

@end