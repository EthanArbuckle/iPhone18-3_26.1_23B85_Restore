@interface AVAudioUnitComponent
- (AVAudioUnitComponent)initWithComponentDescription:(AudioComponentDescription *)a3;
- (AVAudioUnitComponent)initWithComponentDescription:(AudioComponentDescription *)a3 withAVAUManagerImpl:(AVAudioUnitComponentManagerImpl *)a4;
- (BOOL)isComponentDescriptionMatch:(AudioComponentDescription *)a3;
- (BOOL)passesAUVal;
- (BOOL)supportsNumberInputChannels:(NSInteger)numInputChannels outputChannels:(NSInteger)numOutputChannels;
- (BOOL)validateWithResults:(id)a3 inCompletionHandler:(id)a4;
- (NSArray)availableArchitectures;
- (NSDictionary)configurationDictionary;
- (NSString)localizedTypeName;
- (NSString)versionString;
- (NSURL)componentURL;
- (NSURL)iconURL;
- (UIImage)icon;
- (id)GetTypeName:(unsigned int)a3;
- (void)dealloc;
- (void)setUserTagNames:(NSArray *)userTagNames;
@end

@implementation AVAudioUnitComponent

- (BOOL)isComponentDescriptionMatch:(AudioComponentDescription *)a3
{
  if (self)
  {
    [(AVAudioUnitComponent *)self audioComponentDescription];
  }

  return !a3->componentType && !a3->componentSubType && a3->componentManufacturer == 0;
}

- (id)GetTypeName:(unsigned int)a3
{
  if (a3 > 1635086187)
  {
    if (a3 <= 1635086950)
    {
      switch(a3)
      {
        case 0x61756F6Cu:
          return @"Offline Effect";
        case 0x61756F75u:
          return @"Output";
        case 0x6175706Eu:
          return @"Panner";
      }
    }

    else if (a3 > 1635086956)
    {
      if (a3 == 1635086957)
      {
        return @"Remote Music Effect";
      }

      if (a3 == 1635086968)
      {
        return @"Remote Effect";
      }
    }

    else
    {
      if (a3 == 1635086951)
      {
        return @"Remote Generator";
      }

      if (a3 == 1635086953)
      {
        return @"Remote Instrument";
      }
    }
  }

  else if (a3 <= 1635085669)
  {
    switch(a3)
    {
      case 0x61756663u:
        return @"Format Converter";
      case 0x61756678u:
        return @"Effect";
      case 0x6175676Eu:
        return @"Generator";
    }
  }

  else if (a3 > 1635085684)
  {
    if (a3 == 1635085685)
    {
      return @"Music Device";
    }

    if (a3 == 1635085688)
    {
      return @"Mixer";
    }
  }

  else
  {
    if (a3 == 1635085670)
    {
      return @"Music Effect";
    }

    if (a3 == 1635085673)
    {
      return @"MIDI Processor";
    }
  }

  return @"Unknown";
}

- (BOOL)supportsNumberInputChannels:(NSInteger)numInputChannels outputChannels:(NSInteger)numOutputChannels
{
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:numInputChannels];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:numOutputChannels];
  v8 = [(AVAudioUnitComponent *)self configurationDictionary];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [(NSDictionary *)v8 objectForKey:@"InitialInputs"];
  v11 = [(NSDictionary *)v9 objectForKey:@"InitialOutputs"];
  if (!v10)
  {
    return 0;
  }

  v12 = v11;
  if (!v11 || ![v10 containsObject:v6])
  {
    return 0;
  }

  return [v12 containsObject:v7];
}

- (BOOL)validateWithResults:(id)a3 inCompletionHandler:(id)a4
{
  v4 = *(self->_impl + 1);
  inCompletionHandler[0] = MEMORY[0x1E69E9820];
  inCompletionHandler[1] = 3221225472;
  inCompletionHandler[2] = __64__AVAudioUnitComponent_validateWithResults_inCompletionHandler___block_invoke;
  inCompletionHandler[3] = &unk_1E7EF5340;
  inCompletionHandler[4] = a4;
  return AudioComponentValidateWithResults(v4, a3, inCompletionHandler) == 0;
}

- (NSDictionary)configurationDictionary
{
  impl = self->_impl;
  if ((impl[132] & 1) == 0)
  {
    AVAudioUnitComponentImpl::FetchConfigurationDictionary(self->_impl);
  }

  if (*(impl + 17))
  {
    v4 = self->_impl;
    if ((*(v4 + 132) & 1) == 0)
    {
      AVAudioUnitComponentImpl::FetchConfigurationDictionary(v4);
    }

    return *(v4 + 17);
  }

  else
  {
    v6 = MEMORY[0x1E695DF20];

    return [v6 dictionary];
  }
}

- (BOOL)passesAUVal
{
  impl = self->_impl;
  if (*(impl + 32) == 1)
  {
    return 1;
  }

  AudioComponentValidate(*(impl + 1), 0, impl + 32);
  return *(impl + 32) == 1;
}

- (NSArray)availableArchitectures
{
  impl = self->_impl;
  if (*(impl + 13) || (v6 = *(impl + 12)) != 0 && (*(self->_impl + 13) = CFBundleCopyExecutableArchitecturesForURL(v6)) != 0)
  {
    v3 = MEMORY[0x1E695DEC8];

    return [v3 arrayWithArray:?];
  }

  else
  {
    v7 = MEMORY[0x1E695DEC8];

    return [v7 array];
  }
}

- (NSURL)componentURL
{
  result = *(self->_impl + 12);
  if (!result)
  {
    return [MEMORY[0x1E695DFF8] URLWithString:&stru_1F384E730];
  }

  return result;
}

- (void)setUserTagNames:(NSArray *)userTagNames
{
  v3 = userTagNames;
  if (userTagNames)
  {
    if ([(NSArray *)userTagNames count])
    {
      v3 = [MEMORY[0x1E695DFD8] setWithArray:v3];
      if (-[NSArray isSubsetOfSet:](v3, "isSubsetOfSet:", [MEMORY[0x1E695DFD8] setWithArray:*(self->_impl + 11)]))
      {
        return;
      }

      if (v3)
      {
        v3 = [(NSArray *)v3 allObjects];
      }
    }

    else
    {
      v3 = 0;
    }
  }

  impl = self->_impl;
  v6 = *(impl + 11);
  if (v6 != v3)
  {
    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(impl + 11) = v6;
    }

    [(NSArray *)v6 removeAllObjects];
    if ([(NSArray *)v3 count])
    {
      [*(impl + 11) addObjectsFromArray:v3];
    }

    operator new();
  }

  v7 = *(impl + 15);
  v8 = v3;
  if (v8)
  {
    v9 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    v10 = [MEMORY[0x1E695DFA8] setWithArray:*(v7 + 16)];
    if ([v9 isSubsetOfSet:v10])
    {
      NSLog(&cfstr_NoChanges.isa);
    }

    else
    {
      NSLog(&cfstr_NewTagsFoundAd.isa);
      [v10 unionSet:v9];
      [*(v7 + 16) removeAllObjects];
      v11 = *(v7 + 16);
      v12 = [v10 allObjects];
      [v11 addObjectsFromArray:v12];
    }
  }

  v13 = [MEMORY[0x1E696AD88] defaultCenter];

  [v13 postNotificationName:@"AVAudioUnitComponentTagsDidChangeNotification" object:self];
}

- (UIImage)icon
{
  v2 = AudioComponentCopyIcon(*(self->_impl + 1));

  return v2;
}

- (NSURL)iconURL
{
  result = *(self->_impl + 19);
  if (!result)
  {
    return [MEMORY[0x1E695DFF8] URLWithString:&stru_1F384E730];
  }

  return result;
}

- (NSString)versionString
{
  result = *(self->_impl + 5);
  if (!result)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"-"];
  }

  return result;
}

- (NSString)localizedTypeName
{
  impl = self->_impl;
  v3 = [(AVAudioUnitComponent *)self typeName];
  result = *(impl + 8);
  if (v3 && !result)
  {
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.audio.units.Components");
    if (BundleWithIdentifier)
    {
      result = CFBundleCopyLocalizedString(BundleWithIdentifier, v3, v3, @"AudioUnitTypes");
      *(impl + 8) = result;
    }

    else
    {
      return *(impl + 8);
    }
  }

  return result;
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    (*(*impl + 8))(impl, a2);
  }

  v4.receiver = self;
  v4.super_class = AVAudioUnitComponent;
  [(AVAudioUnitComponent *)&v4 dealloc];
}

- (AVAudioUnitComponent)initWithComponentDescription:(AudioComponentDescription *)a3 withAVAUManagerImpl:(AVAudioUnitComponentManagerImpl *)a4
{
  v5.receiver = self;
  v5.super_class = AVAudioUnitComponent;
  if ([(AVAudioUnitComponent *)&v5 init])
  {
    operator new();
  }

  MEMORY[8] = 0;
  return 0;
}

- (AVAudioUnitComponent)initWithComponentDescription:(AudioComponentDescription *)a3
{
  v4.receiver = self;
  v4.super_class = AVAudioUnitComponent;
  if ([(AVAudioUnitComponent *)&v4 init])
  {
    operator new();
  }

  MEMORY[8] = 0;
  return 0;
}

@end