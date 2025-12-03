@interface APFrequencyCapData
- (APFrequencyCapData)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APFrequencyCapData

- (APFrequencyCapData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = APFrequencyCapData;
  v8 = [(APFrequencyCapData *)&v22 init];
  if (v8)
  {
    v8->_relevantIdentifier = objc_msgSend_decodeIntForKey_(coderCopy, v5, @"relevantIdentifier", v6, v7, v9, v10);
    v8->_value = objc_msgSend_decodeIntForKey_(coderCopy, v11, @"frequencyValue", v12, v13, v14, v15);
    v8->_duration = objc_msgSend_decodeIntForKey_(coderCopy, v16, @"frequencyDuration", v17, v18, v19, v20);
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  relevantIdentifier_low = LODWORD(self->_relevantIdentifier);
  coderCopy = coder;
  objc_msgSend_encodeInt_forKey_(coderCopy, v5, relevantIdentifier_low, @"relevantIdentifier", v6, v7, v8);
  objc_msgSend_encodeInt_forKey_(coderCopy, v9, LODWORD(self->_value), @"frequencyValue", v10, v11, v12);
  objc_msgSend_encodeInt_forKey_(coderCopy, v13, LODWORD(self->_duration), @"frequencyDuration", v14, v15, v16);
}

@end