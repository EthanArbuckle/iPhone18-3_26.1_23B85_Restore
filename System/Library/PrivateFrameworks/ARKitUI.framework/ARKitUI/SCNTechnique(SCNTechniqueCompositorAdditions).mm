@interface SCNTechnique(SCNTechniqueCompositorAdditions)
- (id)passForName:()SCNTechniqueCompositorAdditions;
@end

@implementation SCNTechnique(SCNTechniqueCompositorAdditions)

- (id)passForName:()SCNTechniqueCompositorAdditions
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dictionaryRepresentation = [self dictionaryRepresentation];
  v6 = [dictionaryRepresentation mutableArrayValueForKey:@"sequence"];

  v7 = [v6 indexOfObject:v4];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [SCNTechnique(SCNTechniqueCompositorAdditions) passForName:];
    }

    v8 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v9 = _ARLogGeneral();
    v10 = v9;
    if (v8 == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v18 = 138543874;
        v19 = v12;
        v20 = 2048;
        selfCopy2 = self;
        v22 = 2114;
        v23 = v4;
        _os_log_impl(&dword_23D3AE000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to find index for pass: %{public}@!", &v18, 0x20u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = 138543874;
      v19 = v17;
      v20 = 2048;
      selfCopy2 = self;
      v22 = 2114;
      v23 = v4;
      _os_log_impl(&dword_23D3AE000, v10, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to find index for pass: %{public}@!", &v18, 0x20u);
    }

    __assert_rtn("[SCNTechnique(SCNTechniqueCompositorAdditions) passForName:]", "ARSCNCompositor.mm", 77, "index != NSNotFound");
  }

  v13 = [self passAtIndex:v7];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end