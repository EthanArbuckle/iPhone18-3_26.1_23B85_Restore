@interface _ACComponentWrapper
- (_ACComponentWrapper)initWithCoder:(id)a3;
- (_ACComponentWrapper)initWithComponent:(void *)a3;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _ACComponentWrapper

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (_ACComponentWrapper)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeIntForKey:@"implType"];
  [v3 decodeIntForKey:@"priority"];
  v31[0] = [v3 decodeInt32ForKey:@"type"];
  v31[1] = [v3 decodeInt32ForKey:@"subType"];
  v31[2] = [v3 decodeInt32ForKey:@"manufacturer"];
  v32 = [v3 decodeInt32ForKey:@"flags"];
  v33 = 0;
  v5 = [v3 decodeInt32ForKey:@"version"];
  v6 = 0x1E696A000uLL;
  {
    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    [_ACComponentWrapper initWithCoder:]::arrayOfString = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  }

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  applesauce::CF::StringRef::from_ns(&v30, v7);

  v8 = [v3 decodeObjectOfClasses:-[_ACComponentWrapper initWithCoder:]::arrayOfString forKey:@"tags"];
  applesauce::CF::ArrayRef::from_ns(&v29, v8);

  [v3 decodeIntForKey:@"wasValidated"];
  [v3 decodeIntForKey:@"validationResult"];
  if (v4 != 1)
  {
    if (v4 == 3)
    {
      v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"extensionIdentifier"];
      v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"factoryFunctionName"];
      applesauce::CF::StringRef::from_ns(&cf, v10);

      v23 = 0;
      AudioComponentRegistrationInfo::AudioComponentRegistrationInfo(v24, v31, v32, &v30, v5, &cf, &v23, &v29);
      APComponent_NSExtension::create_shared(&v23, v24, v9, 0);
    }

    __assert_rtn("[_ACComponentWrapper initWithCoder:]", "AudioComponentVector.mm", 287, "0");
  }

  {
    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    [_ACComponentWrapper initWithCoder:]::arrayOfNumber = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v6 = 0x1E696A000;
  }

  v11 = *(v6 + 3776);
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"bundlePath"];
  applesauce::CF::StringRef::from_ns(&cf, v12);

  v13 = [v3 decodeObjectOfClasses:-[_ACComponentWrapper initWithCoder:]::arrayOfNumber forKey:@"archs"];
  applesauce::CF::ArrayRef::from_ns(&v27, v13);

  v14 = *(v6 + 3776);
  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"factoryFunctionName"];
  applesauce::CF::StringRef::from_ns(&v26, v15);

  v16 = *(v6 + 3776);
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"className"];
  applesauce::CF::StringRef::from_ns(&v25, v17);

  AudioComponentRegistrationInfo::AudioComponentRegistrationInfo(v24, v31, v32, &v30, v5, &v26, &v25, &v29);
  APComponent_FromBundle_Loadable::create_shared();
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  ptr = self->mComponent.__ptr_;
  v11 = v4;
  [v4 encodeInt:*(ptr + 8) forKey:@"implType"];
  [v11 encodeInt:*(ptr + 15) forKey:@"priority"];
  [v11 encodeInt32:*(ptr + 9) forKey:@"type"];
  [v11 encodeInt32:*(ptr + 10) forKey:@"subType"];
  [v11 encodeInt32:*(ptr + 11) forKey:@"manufacturer"];
  [v11 encodeInt32:*(ptr + 12) forKey:@"flags"];
  [v11 encodeInt32:*(ptr + 14) forKey:@"version"];
  APComponent::name(&v12, *(ptr + 8));
  v6 = v12;
  [v11 encodeObject:v12 forKey:@"name"];
  if (v6)
  {
    CFRelease(v6);
  }

  [v11 encodeObject:*(ptr + 15) forKey:@"tags"];
  [v11 encodeInt:*(ptr + 128) forKey:@"validated"];
  [v11 encodeInt:*(ptr + 33) forKey:@"validationResult"];
  v7 = (*(*ptr + 80))(ptr);
  v8 = v7;
  if (v7)
  {
    [v11 encodeObject:*(v7 + 160) forKey:@"bundlePath"];
    [v11 encodeObject:v8[21] forKey:@"archs"];
    [v11 encodeObject:v8[22] forKey:@"factoryFunctionName"];
    [v11 encodeObject:v8[23] forKey:@"className"];
  }

  v9 = (*(*ptr + 64))(ptr);
  v10 = v11;
  if (v9)
  {
    [v11 encodeObject:*(v9 + 160) forKey:@"extensionIdentifier"];
    [v11 encodeObject:*(v9 + 192) forKey:@"factoryFunctionName"];
    v10 = v11;
  }
}

- (_ACComponentWrapper)initWithComponent:(void *)a3
{
  v5 = *a3;
  v4 = *(a3 + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->mComponent.__cntrl_;
  self->mComponent.__ptr_ = v5;
  self->mComponent.__cntrl_ = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  return self;
}

@end