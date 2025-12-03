@interface MPSGraphExecutableSerializationDescriptor
+ (void)validateMinimumDeploymentTargetVersion:(optional<MPSGraphOperatingSystemVersion> *)version forPlatform:(unint64_t)platform;
- (MPSGraphExecutableSerializationDescriptor)init;
- (NSString)minimumDeploymentTarget;
- (optional<MPSGraphOperatingSystemVersion>)getUserSetMinimumDeploymentTarget;
- (void)setMinimumDeploymentTarget:(NSString *)minimumDeploymentTarget;
@end

@implementation MPSGraphExecutableSerializationDescriptor

- (MPSGraphExecutableSerializationDescriptor)init
{
  v8.receiver = self;
  v8.super_class = MPSGraphExecutableSerializationDescriptor;
  v2 = [(MPSGraphExecutableSerializationDescriptor *)&v8 init];
  active_platform = dyld_get_active_platform();
  if (active_platform != 1)
  {
    if ((active_platform & 0xFFFFFFFB) == 2)
    {
      v4 = 1;
      goto LABEL_9;
    }

    if (active_platform == 3)
    {
      v4 = 2;
      goto LABEL_9;
    }

    if (active_platform == 11)
    {
      v4 = 3;
      goto LABEL_9;
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v4 = 0;
LABEL_9:
  v2->_deploymentPlatform = v4;
  if ((atomic_load_explicit(&qword_1ECE75420, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECE75420))
  {
    getMPSGraphBuildSDKVersion(void)::$_0::operator()();
    __cxa_guard_release(&qword_1ECE75420);
  }

  v9 = *byte_1ECE75490;
  v5 = MPSGraphOperatingSystemVersion::asString(&v9);
  minimumDeploymentTarget = v2->_minimumDeploymentTarget;
  v2->_minimumDeploymentTarget = v5;

  v2->_userSetMinimumDeploymentTarget = 0;
  return v2;
}

- (void)setMinimumDeploymentTarget:(NSString *)minimumDeploymentTarget
{
  v7 = minimumDeploymentTarget;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSString *)v7 copy];
  v6 = selfCopy->_minimumDeploymentTarget;
  selfCopy->_minimumDeploymentTarget = v5;

  selfCopy->_userSetMinimumDeploymentTarget = 1;
  objc_sync_exit(selfCopy);
}

- (NSString)minimumDeploymentTarget
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_minimumDeploymentTarget;
  objc_sync_exit(selfCopy);

  return v3;
}

- (optional<MPSGraphOperatingSystemVersion>)getUserSetMinimumDeploymentTarget
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_userSetMinimumDeploymentTarget)
  {
    [(MPSGraphExecutableSerializationDescriptor *)selfCopy getDeploymentTargetAsOSVersion];
    *&retstr->var0.var0 = v6;
    retstr->var0.var1.var2 = v7;
    retstr->var1 = 1;
  }

  else
  {
    retstr->var0.var0 = 0;
    retstr->var1 = 0;
  }

  objc_sync_exit(selfCopy);

  return result;
}

+ (void)validateMinimumDeploymentTargetVersion:(optional<MPSGraphOperatingSystemVersion> *)version forPlatform:(unint64_t)platform
{
  if (version->var1)
  {
    var0 = version->var0.var1.var0;
    var1 = version->var0.var1.var1;
    var2 = version->var0.var1.var2;
    if (platform > 1)
    {
      if (platform == 2)
      {
        if (var0 <= 17 && (var0 != 17 || var1 <= 0 && (var1 || var2 < 0)) && MTLReportFailureTypeEnabled())
        {

          goto LABEL_13;
        }
      }

      else if (platform == 3 && var0 <= 1 && (var0 != 1 || var1 <= 1 && (var1 != 1 || var2 < 0)) && MTLReportFailureTypeEnabled())
      {

        goto LABEL_13;
      }
    }

    else if (platform)
    {
      if (platform == 1 && var0 <= 17 && (var0 != 17 || var1 <= 0 && (var1 || var2 < 0)) && MTLReportFailureTypeEnabled())
      {

LABEL_13:
        MTLReportFailure();
      }
    }

    else if (var0 <= 14 && (var0 != 14 || var1 <= 0 && (var1 || var2 < 0)) && MTLReportFailureTypeEnabled())
    {

      goto LABEL_13;
    }
  }
}

@end