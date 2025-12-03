@interface _SFContextualNamedEntitySource
- (_SFContextualNamedEntitySource)initWithCoder:(id)coder;
- (_SFContextualNamedEntitySource)initWithSourceApplications:(id)applications fromDate:(id)date toDate:(id)toDate limit:(int64_t)limit;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SFContextualNamedEntitySource

- (_SFContextualNamedEntitySource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _SFContextualNamedEntitySource;
  v5 = [(_SFContextualNamedEntitySource *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_sourceApplications"];
    sourceApplications = v5->_sourceApplications;
    v5->_sourceApplications = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fromDate"];
    fromDate = v5->_fromDate;
    v5->_fromDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_toDate"];
    toDate = v5->_toDate;
    v5->_toDate = v10;

    v5->_limit = [coderCopy decodeIntegerForKey:@"_limit"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sourceApplications = self->_sourceApplications;
  coderCopy = coder;
  [coderCopy encodeObject:sourceApplications forKey:@"_sourceApplications"];
  [coderCopy encodeObject:self->_fromDate forKey:@"_fromDate"];
  [coderCopy encodeObject:self->_toDate forKey:@"_toDate"];
  [coderCopy encodeInteger:self->_limit forKey:@"_limit"];
}

- (_SFContextualNamedEntitySource)initWithSourceApplications:(id)applications fromDate:(id)date toDate:(id)toDate limit:(int64_t)limit
{
  applicationsCopy = applications;
  dateCopy = date;
  toDateCopy = toDate;
  v21.receiver = self;
  v21.super_class = _SFContextualNamedEntitySource;
  v13 = [(_SFContextualNamedEntitySource *)&v21 init];
  if (v13)
  {
    v14 = [applicationsCopy copy];
    sourceApplications = v13->_sourceApplications;
    v13->_sourceApplications = v14;

    v16 = [dateCopy copy];
    fromDate = v13->_fromDate;
    v13->_fromDate = v16;

    v18 = [toDateCopy copy];
    toDate = v13->_toDate;
    v13->_toDate = v18;

    v13->_limit = limit;
  }

  return v13;
}

@end