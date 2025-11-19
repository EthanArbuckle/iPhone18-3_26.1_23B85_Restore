@interface CMFileInterface
+ (BOOL)writeContainerToFileURL:(id)a3 container:(id)a4;
- (id)initReaderWithFileURL:(id)a3;
- (id)initWriter;
- (void)processCMData:(id)a3;
@end

@implementation CMFileInterface

- (id)initReaderWithFileURL:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CMFileInterface;
  v5 = [(CMFileInterface *)&v11 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4];
  if (v6)
  {
    v7 = +[CMDataContainer classes];
    v8 = [CVAMetadataWrapper decodeNSCoderObject:v6 classes:v7];
    cmDataContainer = v5->_cmDataContainer;
    v5->_cmDataContainer = v8;

LABEL_4:
    v6 = v5;
  }

  return v6;
}

- (id)initWriter
{
  v7.receiver = self;
  v7.super_class = CMFileInterface;
  v2 = [(CMFileInterface *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(CMDataContainer);
    cmDataContainer = v2->_cmDataContainer;
    v2->_cmDataContainer = v3;

    [(CMDataContainer *)v2->_cmDataContainer setIOSVersion:CFCopySystemVersionString()];
    v5 = +[MIOWriterInterface makeDeviceString];
    [(CMDataContainer *)v2->_cmDataContainer setDeviceString:v5];
  }

  return v2;
}

- (void)processCMData:(id)a3
{
  cmDataContainer = self->_cmDataContainer;
  v4 = a3;
  -[CMDataContainer appendCMData:sending:](cmDataContainer, "appendCMData:sending:", v4, [v4 isSent]);
}

+ (BOOL)writeContainerToFileURL:(id)a3 container:(id)a4
{
  v5 = a3;
  v6 = [CVAMetadataWrapper encodeNSCoderObject:a4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 writeToURL:v5 atomically:1];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end