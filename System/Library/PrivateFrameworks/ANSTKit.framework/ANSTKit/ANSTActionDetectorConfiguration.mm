@interface ANSTActionDetectorConfiguration
+ (ANSTActionDetectorConfiguration)new;
- (ANSTActionDetectorConfiguration)init;
- (ANSTActionDetectorConfiguration)initWithVersion:(unint64_t)version;
- (ANSTActionDetectorConfiguration)initWithVersion:(unint64_t)version frameRate:(int64_t)rate error:(id *)p_isa;
- (id)description;
@end

@implementation ANSTActionDetectorConfiguration

- (ANSTActionDetectorConfiguration)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (ANSTActionDetectorConfiguration)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTActionDetectorConfiguration)initWithVersion:(unint64_t)version
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTActionDetectorConfiguration)initWithVersion:(unint64_t)version frameRate:(int64_t)rate error:(id *)p_isa
{
  v23[1] = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_supportedFrameRatesOfDetectorVersion_(ANSTActionDetector, a2, version);
  v11 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v10, rate);
  v13 = objc_msgSend_containsObject_(v9, v12, v11);

  if (v13)
  {
    v21.receiver = self;
    v21.super_class = ANSTActionDetectorConfiguration;
    v15 = [(ANSTConfiguration *)&v21 initWithVersion:version];
    if (v15)
    {
      v15->_frameRate = rate;
    }

    self = v15;
    p_isa = &self->super.super.isa;
  }

  else if (p_isa)
  {
    v16 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA068];
    v23[0] = @"Unsupported version + frame rate combination.";
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v23, &v22, 1);
    *p_isa = objc_msgSend_errorWithDomain_code_userInfo_(v16, v18, @"ANSTErrorDomain", 3, v17);

    p_isa = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return p_isa;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_version(self, a2, v2);
  v6 = ANSTActionDetectorVersionToNSString(v5);
  v7 = ANSTFrameRateToNSString(self->_frameRate);
  v9 = objc_msgSend_stringWithFormat_(v4, v8, @"ANSTActionDetectorConfiguration [version %@, frameRate %@]", v6, v7);

  return v9;
}

@end