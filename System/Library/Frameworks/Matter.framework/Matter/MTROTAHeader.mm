@interface MTROTAHeader
- (MTROTAHeader)initWithData:(NSData *)data;
@end

@implementation MTROTAHeader

- (MTROTAHeader)initWithData:(NSData *)data
{
  v4 = data;
  v40.receiver = self;
  v40.super_class = MTROTAHeader;
  v5 = [(MTROTAHeader *)&v40 init];
  if (v5)
  {
    v39 = 0;
    sub_2393C50D0(v38);
    if (v38[0])
    {
      v6 = v4;
      sub_238DB6950(&v27, [(NSData *)v6 bytes], [(NSData *)v6 length]);

      v37 = v27;
      *(&v27 + 1) = 0;
      v28 = 0;
      v30[0] = 0;
      v31[0] = 0;
      v32 = 0;
      v33 = 0;
      v35 = 0;
      v36 = 0;
      if (!sub_2393C5120(v38, &v37, &v27))
      {
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v27];
        vendorID = v5->_vendorID;
        v5->_vendorID = v8;

        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v27)];
        productID = v5->_productID;
        v5->_productID = v10;

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v29];
        payloadSize = v5->_payloadSize;
        v5->_payloadSize = v12;

        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD1(v27)];
        softwareVersion = v5->_softwareVersion;
        v5->_softwareVersion = v14;

        v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(&v27 + 1) length:v28 encoding:4];
        softwareVersionString = v5->_softwareVersionString;
        v5->_softwareVersionString = v16;

        v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v32 length:v33 encoding:4];
        releaseNotesURL = v5->_releaseNotesURL;
        v5->_releaseNotesURL = v18;

        v20 = [MEMORY[0x277CBEA90] dataWithBytes:v35 length:v36];
        imageDigest = v5->_imageDigest;
        v5->_imageDigest = v20;

        v5->_imageDigestType = v34;
        if (v30[0] == 1)
        {
          v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238F41E94(v30)];
        }

        else
        {
          v22 = 0;
        }

        minApplicableVersion = v5->_minApplicableVersion;
        v5->_minApplicableVersion = v22;

        if (v31[0] == 1)
        {
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238F41E94(v31)];
        }

        else
        {
          v24 = 0;
        }

        maxApplicableVersion = v5->_maxApplicableVersion;
        v5->_maxApplicableVersion = v24;

        sub_2393C50E8(v38);
        v7 = v5;
        goto LABEL_14;
      }

      sub_2393C50E8(v38);
    }

    v7 = 0;
LABEL_14:
    sub_238DCCA48(&v39);
    goto LABEL_15;
  }

  v7 = 0;
LABEL_15:

  return v7;
}

@end