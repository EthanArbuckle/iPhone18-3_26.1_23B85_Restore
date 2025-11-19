@interface IOAnalyticsHIDSessionFilter
- (IOAnalyticsHIDSessionFilter)initWithSession:(id)a3;
- (void)dealloc;
@end

@implementation IOAnalyticsHIDSessionFilter

- (IOAnalyticsHIDSessionFilter)initWithSession:(id)a3
{
  v25.receiver = self;
  v25.super_class = IOAnalyticsHIDSessionFilter;
  v3 = [(IOAnalyticsHIDSessionFilter *)&v25 init];
  if (v3)
  {
    v4 = objc_alloc_init(IOAnalytics);
    ioAnalyics = v3->_ioAnalyics;
    v3->_ioAnalyics = v4;

    v6 = objc_opt_new();
    usbCLightningAdapterAnalytics = v3->_usbCLightningAdapterAnalytics;
    v3->_usbCLightningAdapterAnalytics = v6;

    [(AppleUSBCLightningAdapterAnalytics *)v3->_usbCLightningAdapterAnalytics start];
    v8 = objc_opt_new();
    pcieAnalytics = v3->_pcieAnalytics;
    v3->_pcieAnalytics = v8;

    [(ApplePCIeAnalytics *)v3->_pcieAnalytics start];
    v10 = objc_opt_new();
    usbAnalytics = v3->_usbAnalytics;
    v3->_usbAnalytics = v10;

    [(USBAnalytics *)v3->_usbAnalytics start];
    v12 = objc_opt_new();
    cioAnalytics = v3->_cioAnalytics;
    v3->_cioAnalytics = v12;

    [(CIOAnalytics *)v3->_cioAnalytics start];
    v14 = objc_opt_new();
    dpAnalytics = v3->_dpAnalytics;
    v3->_dpAnalytics = v14;

    [(DPAnalytics *)v3->_dpAnalytics start];
    v16 = objc_opt_new();
    powerInAnalytics = v3->_powerInAnalytics;
    v3->_powerInAnalytics = v16;

    [(PowerInAnalytics *)v3->_powerInAnalytics start];
    v18 = objc_opt_new();
    auvdmAnalytics = v3->_auvdmAnalytics;
    v3->_auvdmAnalytics = v18;

    [(AUVDMAnalytics *)v3->_auvdmAnalytics start];
    v20 = objc_alloc_init(USBPDAnalytics);
    usbpdAnalytics = v3->_usbpdAnalytics;
    v3->_usbpdAnalytics = v20;

    [(USBPDAnalytics *)v3->_usbpdAnalytics start];
    v22 = objc_opt_new();
    firewireAnalytics = v3->_firewireAnalytics;
    v3->_firewireAnalytics = v22;

    [(AppleFireWireAnalytics *)v3->_firewireAnalytics start];
  }

  return v3;
}

- (void)dealloc
{
  ioAnalyics = self->_ioAnalyics;
  self->_ioAnalyics = 0;

  [(AppleUSBCLightningAdapterAnalytics *)self->_usbCLightningAdapterAnalytics stop];
  usbCLightningAdapterAnalytics = self->_usbCLightningAdapterAnalytics;
  self->_usbCLightningAdapterAnalytics = 0;

  [(ApplePCIeAnalytics *)self->_pcieAnalytics stop];
  pcieAnalytics = self->_pcieAnalytics;
  self->_pcieAnalytics = 0;

  [(CIOAnalytics *)self->_cioAnalytics stop];
  cioAnalytics = self->_cioAnalytics;
  self->_cioAnalytics = 0;

  [(DPAnalytics *)self->_dpAnalytics stop];
  dpAnalytics = self->_dpAnalytics;
  self->_dpAnalytics = 0;

  [(PowerInAnalytics *)self->_powerInAnalytics stop];
  powerInAnalytics = self->_powerInAnalytics;
  self->_powerInAnalytics = 0;

  [(AUVDMAnalytics *)self->_auvdmAnalytics stop];
  auvdmAnalytics = self->_auvdmAnalytics;
  self->_auvdmAnalytics = 0;

  [(USBPDAnalytics *)self->_usbpdAnalytics stop];
  usbpdAnalytics = self->_usbpdAnalytics;
  self->_usbpdAnalytics = 0;

  [(AppleFireWireAnalytics *)self->_firewireAnalytics stop];
  firewireAnalytics = self->_firewireAnalytics;
  self->_firewireAnalytics = 0;

  v12.receiver = self;
  v12.super_class = IOAnalyticsHIDSessionFilter;
  [(IOAnalyticsHIDSessionFilter *)&v12 dealloc];
}

@end