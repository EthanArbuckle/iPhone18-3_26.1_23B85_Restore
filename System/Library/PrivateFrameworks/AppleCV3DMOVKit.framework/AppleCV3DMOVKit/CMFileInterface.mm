@interface CMFileInterface
+ (BOOL)writeContainerToFileURL:(id)l container:(id)container;
- (id)initReaderWithFileURL:(id)l;
- (id)initWriter;
- (void)processCMData:(id)data;
@end

@implementation CMFileInterface

- (id)initReaderWithFileURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = CMFileInterface;
  v5 = [(CMFileInterface *)&v11 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy];
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

- (void)processCMData:(id)data
{
  cmDataContainer = self->_cmDataContainer;
  dataCopy = data;
  -[CMDataContainer appendCMData:sending:](cmDataContainer, "appendCMData:sending:", dataCopy, [dataCopy isSent]);
}

+ (BOOL)writeContainerToFileURL:(id)l container:(id)container
{
  lCopy = l;
  v6 = [CVAMetadataWrapper encodeNSCoderObject:container];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 writeToURL:lCopy atomically:1];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end