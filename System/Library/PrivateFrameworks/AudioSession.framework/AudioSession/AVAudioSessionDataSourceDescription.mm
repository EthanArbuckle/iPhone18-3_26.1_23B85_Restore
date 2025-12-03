@interface AVAudioSessionDataSourceDescription
- (AVAudioSessionDataSourceDescription)initWithRawSourceDescription:(id)description andOwningPortID:(id)d andSessionID:(unsigned int)iD;
- (AVAudioSessionDataSourceDescription)initWithSessionID:(unsigned int)d;
- (AVAudioSessionPolarPattern)preferredPolarPattern;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDataSource:(id)source;
- (BOOL)setPreferredPolarPattern:(AVAudioSessionPolarPattern)pattern error:(NSError *)outError;
- (id)description;
- (unint64_t)hash;
- (void)configurePolarPatterns:(id)patterns;
- (void)dealloc;
@end

@implementation AVAudioSessionDataSourceDescription

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {

    MEMORY[0x1B26ED410](impl, 0x1080C406ECF7772);
  }

  self->_impl = 0;
  v4.receiver = self;
  v4.super_class = AVAudioSessionDataSourceDescription;
  [(AVAudioSessionDataSourceDescription *)&v4 dealloc];
}

- (AVAudioSessionDataSourceDescription)initWithSessionID:(unsigned int)d
{
  v4.receiver = self;
  v4.super_class = AVAudioSessionDataSourceDescription;
  if ([(AVAudioSessionDataSourceDescription *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(AVAudioSessionDataSourceDescription *)self isEqualToDataSource:v5];
  }

  return v6;
}

- (BOOL)isEqualToDataSource:(id)source
{
  sourceCopy = source;
  if (self == sourceCopy)
  {
    goto LABEL_13;
  }

  privateGetOwningPortID = [(AVAudioSessionDataSourceDescription *)self privateGetOwningPortID];
  privateGetOwningPortID2 = [(AVAudioSessionDataSourceDescription *)sourceCopy privateGetOwningPortID];
  v7 = [privateGetOwningPortID isEqualToNumber:privateGetOwningPortID2];

  if ((v7 & 1) == 0)
  {
    goto LABEL_15;
  }

  dataSourceID = [(AVAudioSessionDataSourceDescription *)self dataSourceID];
  dataSourceID2 = [(AVAudioSessionDataSourceDescription *)sourceCopy dataSourceID];
  v10 = [dataSourceID isEqualToNumber:dataSourceID2];

  if ((v10 & 1) == 0)
  {
    goto LABEL_15;
  }

  dataSourceName = [(AVAudioSessionDataSourceDescription *)self dataSourceName];
  dataSourceName2 = [(AVAudioSessionDataSourceDescription *)sourceCopy dataSourceName];
  v13 = [dataSourceName isEqualToString:dataSourceName2];

  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  orientation = [(AVAudioSessionDataSourceDescription *)self orientation];

  if (orientation)
  {
    orientation2 = [(AVAudioSessionDataSourceDescription *)sourceCopy orientation];

    if (!orientation2)
    {
      goto LABEL_15;
    }

    orientation3 = [(AVAudioSessionDataSourceDescription *)self orientation];
    orientation4 = [(AVAudioSessionDataSourceDescription *)sourceCopy orientation];
    v18 = [orientation3 isEqualToString:orientation4];

    if ((v18 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    orientation5 = [(AVAudioSessionDataSourceDescription *)sourceCopy orientation];

    if (orientation5)
    {
      goto LABEL_15;
    }
  }

  selectedPolarPattern = [(AVAudioSessionDataSourceDescription *)self selectedPolarPattern];

  if (selectedPolarPattern)
  {
    selectedPolarPattern2 = [(AVAudioSessionDataSourceDescription *)sourceCopy selectedPolarPattern];

    if (selectedPolarPattern2)
    {
      selectedPolarPattern3 = [(AVAudioSessionDataSourceDescription *)self selectedPolarPattern];
      selectedPolarPattern4 = [(AVAudioSessionDataSourceDescription *)sourceCopy selectedPolarPattern];
      v24 = [selectedPolarPattern3 isEqualToString:selectedPolarPattern4];

      if (v24)
      {
        goto LABEL_13;
      }
    }

LABEL_15:
    v25 = 0;
    goto LABEL_16;
  }

  selectedPolarPattern5 = [(AVAudioSessionDataSourceDescription *)sourceCopy selectedPolarPattern];

  if (selectedPolarPattern5)
  {
    goto LABEL_15;
  }

LABEL_13:
  v25 = 1;
LABEL_16:

  return v25;
}

- (unint64_t)hash
{
  dataSourceID = [(AVAudioSessionDataSourceDescription *)self dataSourceID];
  v3 = [dataSourceID hash];

  return v3;
}

- (AVAudioSessionPolarPattern)preferredPolarPattern
{
  v2 = copyPolarPatternPreference(*self->_impl, *(self->_impl + 8), *(self->_impl + 1));

  return v2;
}

- (id)description
{
  impl = self->_impl;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@: %p, ID = %@ name = %@>", v6, self, impl[1], impl[2]];;

  return v7;
}

- (BOOL)setPreferredPolarPattern:(AVAudioSessionPolarPattern)pattern error:(NSError *)outError
{
  v7 = pattern;
  impl = self->_impl;
  if (v7)
  {
    PolarPatternValueConverter = GetPolarPatternValueConverter();
    UInt32 = StringUIntValueConverter::getUInt32(PolarPatternValueConverter, v7);
    if ((UInt32 & 1) == 0)
    {
      if (outError)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
        *outError = v21 = 0;
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_15;
    }

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(UInt32)];
    v12 = MEMORY[0x1E695DF20];
    privateGetOwningPortID = [(AVAudioSessionDataSourceDescription *)self privateGetOwningPortID];
    dataSourceID = [(AVAudioSessionDataSourceDescription *)self dataSourceID];
    v15 = [v12 dictionaryWithObjectsAndKeys:{privateGetOwningPortID, @"SelectedRouteDescription_RouteID", dataSourceID, @"SelectedRouteDescription_DataSourceID", v11, @"SelectedRouteDescription_MicrophonePolarPattern", 0}];
    v16 = MEMORY[0x1E69B0240];
  }

  else
  {
    v17 = GetPolarPatternValueConverter();
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{StringUIntValueConverter::getUInt32(v17, impl[7]) >> 32}];
    v18 = MEMORY[0x1E695DF20];
    privateGetOwningPortID = [(AVAudioSessionDataSourceDescription *)self privateGetOwningPortID];
    dataSourceID = [(AVAudioSessionDataSourceDescription *)self dataSourceID];
    v15 = [v18 dictionaryWithObjectsAndKeys:{privateGetOwningPortID, @"SelectedRouteDescription_RouteID", dataSourceID, @"SelectedRouteDescription_DataSourceID", v11, @"SelectedRouteDescription_MicrophonePolarPattern", 0}];
    v16 = MEMORY[0x1E69AFED8];
  }

  v19 = *v16;
  objc_storeStrong(impl + 7, pattern);
  v20 = [MEMORY[0x1E695DEC8] arrayWithObject:v15];
  AVAudioSessionGetXPCConnection(*impl, &v25);
  v23 = v25;
  v24 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  avas::client::SetPropertyXPC(&v23, *impl, v19, v20, 1);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v21 = FormatNSErrorForReturn();
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

LABEL_15:
  return v21;
}

- (AVAudioSessionDataSourceDescription)initWithRawSourceDescription:(id)description andOwningPortID:(id)d andSessionID:(unsigned int)iD
{
  v13 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = AVAudioSessionDataSourceDescription;
  if ([(AVAudioSessionDataSourceDescription *)&v12 init])
  {
    operator new();
  }

  v9 = 0;

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)configurePolarPatterns:(id)patterns
{
  v29 = *MEMORY[0x1E69E9840];
  patternsCopy = patterns;
  privateGetImplementation = [(AVAudioSessionDataSourceDescription *)self privateGetImplementation];
  v6 = *MEMORY[0x1E69B0588];
  v7 = [patternsCopy objectForKey:v6];

  PolarPatternValueConverter = GetPolarPatternValueConverter();
  v9 = StringUIntValueConverter::getNSString(PolarPatternValueConverter, v7);
  var6 = privateGetImplementation->var6;
  privateGetImplementation->var6 = v9;

  v11 = *MEMORY[0x1E69B0570];
  v12 = [patternsCopy objectForKey:v11];

  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = *v25;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v24 + 1) + 8 * v17);
        v19 = GetPolarPatternValueConverter();
        v20 = StringUIntValueConverter::getNSString(v19, v18);
        if (v20)
        {
          [v13 addObject:{v20, v24}];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v21 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v13];
  var5 = privateGetImplementation->var5;
  privateGetImplementation->var5 = v21;

  DataSourceDescriptionImpl::ValidateRequiredFields(privateGetImplementation);
  v23 = *MEMORY[0x1E69E9840];
}

@end