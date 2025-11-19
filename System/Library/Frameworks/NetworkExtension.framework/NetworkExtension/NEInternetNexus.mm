@interface NEInternetNexus
- (BOOL)setDefaultInputHandler:(nw_protocol *)a3;
- (NEInternetNexus)initWithName:(id)a3 delegate:(id)a4 shouldCreateKernelChannel:(BOOL)a5;
- (void)dealloc;
- (void)setRemotePacketProxy:(id)a3;
@end

@implementation NEInternetNexus

- (void)setRemotePacketProxy:(id)a3
{
  v6 = a3;
  [(NEInternetNexus *)self setPacketProxy:v6];
  v4 = v6;
  if (v6)
  {
    -[NEInternetNexus setDefaultInputHandler:](self, "setDefaultInputHandler:", [v6 protocol]);
    if (self)
    {
      utunProtocol = self->_utunProtocol;
    }

    else
    {
      utunProtocol = 0;
    }

    [v6 setDefaultOutputProtocolHandler:utunProtocol];
    v4 = v6;
  }
}

- (BOOL)setDefaultInputHandler:(nw_protocol *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v4 = ne_log_obj();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    v18 = 136315138;
    v19 = "[NEInternetNexus setDefaultInputHandler:]";
    v14 = "%s called with null inputHandler";
    v15 = v4;
    v16 = 12;
    goto LABEL_17;
  }

  if (self && self->_utunProtocol)
  {
    v4 = ne_log_obj();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    LOWORD(v18) = 0;
    v17 = "Already have default interface input handler set";
LABEL_21:
    _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, v17, &v18, 2u);
    goto LABEL_5;
  }

  if (nw_utun_protocol_identifier_packetProtocolOnceToken != -1)
  {
    dispatch_once(&nw_utun_protocol_identifier_packetProtocolOnceToken, &__block_literal_global_26249);
  }

  v7 = nw_protocol_create();
  if (!self || (self->_utunProtocol = v7) == 0)
  {
    v4 = ne_log_obj();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    LOWORD(v18) = 0;
    v14 = "nw_protocol_create(utun) failed";
    v15 = v4;
    v16 = 2;
LABEL_17:
    _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, v14, &v18, v16);
    goto LABEL_5;
  }

  Property = objc_getProperty(self, v8, 112, 1);
  v11 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v10, 8, 1);
  }

  v12 = Property;
  protocol_handler = nw_channel_get_protocol_handler();

  if (protocol_handler)
  {
    (*self->_utunProtocol->callbacks)();
    (**(protocol_handler + 24))(protocol_handler, self->_utunProtocol);
    result = 1;
    goto LABEL_6;
  }

  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18) = 0;
    v17 = "Could not get kernel channel protocol";
    goto LABEL_21;
  }

LABEL_5:

  result = 0;
LABEL_6:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  if (self)
  {
    utunProtocol = self->_utunProtocol;
    if (utunProtocol)
    {
      free(utunProtocol);
      self->_utunProtocol = 0;
    }
  }

  v4.receiver = self;
  v4.super_class = NEInternetNexus;
  [(NENexus *)&v4 dealloc];
}

- (NEInternetNexus)initWithName:(id)a3 delegate:(id)a4 shouldCreateKernelChannel:(BOOL)a5
{
  v5 = a5;
  v19.receiver = self;
  v19.super_class = NEInternetNexus;
  v6 = [(NENexus *)&v19 initWithLevel:2 name:a3 virtualInterfaceType:1 delegate:a4 channelCount:0];
  v7 = v6;
  if (!v6)
  {
    v16 = ne_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    *v18 = 0;
    v17 = "[super initWithLevel:name:delegate:] failed";
    goto LABEL_12;
  }

  if (v5)
  {
    Channel = NEVirtualInterfaceCreateChannel([(NENexus *)v6 virtualInterface]);
    if (Channel)
    {
      v10 = Channel;
      v11 = objc_getProperty(v7, v9, 112, 1);
      v13 = v11;
      if (v11)
      {
        objc_setProperty_atomic(v11, v12, v10, 8);
      }

      goto LABEL_7;
    }

    v16 = ne_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
LABEL_10:

      v14 = 0;
      goto LABEL_8;
    }

    *v18 = 0;
    v17 = "NEVirtualInterfaceCreateChannel failed";
LABEL_12:
    _os_log_fault_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_FAULT, v17, v18, 2u);
    goto LABEL_10;
  }

LABEL_7:
  v14 = v7;
LABEL_8:

  return v14;
}

@end