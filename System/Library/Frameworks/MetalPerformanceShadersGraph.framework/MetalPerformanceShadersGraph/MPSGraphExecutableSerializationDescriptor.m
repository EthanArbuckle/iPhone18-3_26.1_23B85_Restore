@interface MPSGraphExecutableSerializationDescriptor
+ (void)validateMinimumDeploymentTargetVersion:(optional<MPSGraphOperatingSystemVersion> *)a3 forPlatform:(unint64_t)a4;
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
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NSString *)v7 copy];
  v6 = v4->_minimumDeploymentTarget;
  v4->_minimumDeploymentTarget = v5;

  v4->_userSetMinimumDeploymentTarget = 1;
  objc_sync_exit(v4);
}

- (NSString)minimumDeploymentTarget
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_minimumDeploymentTarget;
  objc_sync_exit(v2);

  return v3;
}

- (optional<MPSGraphOperatingSystemVersion>)getUserSetMinimumDeploymentTarget
{
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_userSetMinimumDeploymentTarget)
  {
    [(MPSGraphExecutableSerializationDescriptor *)v4 getDeploymentTargetAsOSVersion];
    *&retstr->var0.var0 = v6;
    retstr->var0.var1.var2 = v7;
    retstr->var1 = 1;
  }

  else
  {
    retstr->var0.var0 = 0;
    retstr->var1 = 0;
  }

  objc_sync_exit(v4);

  return result;
}

+ (void)validateMinimumDeploymentTargetVersion:(optional<MPSGraphOperatingSystemVersion> *)a3 forPlatform:(unint64_t)a4
{
  if (a3->var1)
  {
    var0 = a3->var0.var1.var0;
    var1 = a3->var0.var1.var1;
    var2 = a3->var0.var1.var2;
    if (a4 > 1)
    {
      if (a4 == 2)
      {
        if (var0 <= 17 && (var0 != 17 || var1 <= 0 && (var1 || var2 < 0)) && MTLReportFailureTypeEnabled())
        {

          goto LABEL_13;
        }
      }

      else if (a4 == 3 && var0 <= 1 && (var0 != 1 || var1 <= 1 && (var1 != 1 || var2 < 0)) && MTLReportFailureTypeEnabled())
      {

        goto LABEL_13;
      }
    }

    else if (a4)
    {
      if (a4 == 1 && var0 <= 17 && (var0 != 17 || var1 <= 0 && (var1 || var2 < 0)) && MTLReportFailureTypeEnabled())
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