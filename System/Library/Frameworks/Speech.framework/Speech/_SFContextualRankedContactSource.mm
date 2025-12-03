@interface _SFContextualRankedContactSource
- (_SFContextualRankedContactSource)initWithCoder:(id)coder;
- (_SFContextualRankedContactSource)initWithSourceApplication:(id)application rankDate:(id)date contactOnly:(BOOL)only limit:(int64_t)limit;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SFContextualRankedContactSource

- (_SFContextualRankedContactSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _SFContextualRankedContactSource;
  v5 = [(_SFContextualRankedContactSource *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sourceApplication"];
    sourceApplication = v5->_sourceApplication;
    v5->_sourceApplication = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_rankDate"];
    rankDate = v5->_rankDate;
    v5->_rankDate = v8;

    v5->_contactOnly = [coderCopy decodeBoolForKey:@"_contactOnly"];
    v5->_limit = [coderCopy decodeIntegerForKey:@"_limit"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sourceApplication = self->_sourceApplication;
  coderCopy = coder;
  [coderCopy encodeObject:sourceApplication forKey:@"_sourceApplication"];
  [coderCopy encodeObject:self->_rankDate forKey:@"_rankDate"];
  [coderCopy encodeBool:self->_contactOnly forKey:@"_contactOnly"];
  [coderCopy encodeInteger:self->_limit forKey:@"_limit"];
}

- (_SFContextualRankedContactSource)initWithSourceApplication:(id)application rankDate:(id)date contactOnly:(BOOL)only limit:(int64_t)limit
{
  applicationCopy = application;
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = _SFContextualRankedContactSource;
  v12 = [(_SFContextualRankedContactSource *)&v18 init];
  if (v12)
  {
    v13 = [applicationCopy copy];
    sourceApplication = v12->_sourceApplication;
    v12->_sourceApplication = v13;

    v15 = [dateCopy copy];
    rankDate = v12->_rankDate;
    v12->_rankDate = v15;

    v12->_contactOnly = only;
    v12->_limit = limit;
  }

  return v12;
}

@end