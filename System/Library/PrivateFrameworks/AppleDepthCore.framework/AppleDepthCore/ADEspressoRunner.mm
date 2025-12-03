@interface ADEspressoRunner
+ (id)espressoRunnerForPath:(id)path forEngine:(unint64_t)engine configurationName:(id)name;
- (ADEspressoRunner)initWithPath:(id)path forEngine:(unint64_t)engine configurationName:(id)name;
- (id)registerDescriptor:(id)descriptor;
@end

@implementation ADEspressoRunner

- (id)registerDescriptor:(id)descriptor
{
  v3 = [(ADEspressoRunnerProtocol *)self->_espressoRunner registerDescriptor:descriptor];

  return v3;
}

- (ADEspressoRunner)initWithPath:(id)path forEngine:(unint64_t)engine configurationName:(id)name
{
  pathCopy = path;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = ADEspressoRunner;
  v10 = [(ADEspressoRunner *)&v15 init];
  if (v10 && ([ADEspressoRunner espressoRunnerForPath:pathCopy forEngine:engine configurationName:nameCopy], v11 = objc_claimAutoreleasedReturnValue(), espressoRunner = v10->_espressoRunner, v10->_espressoRunner = v11, espressoRunner, !v10->_espressoRunner))
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  return v13;
}

+ (id)espressoRunnerForPath:(id)path forEngine:(unint64_t)engine configurationName:(id)name
{
  v14 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  nameCopy = name;
  if ([pathCopy hasSuffix:@".espresso.net"])
  {
    v9 = off_278CA5B60;
LABEL_5:
    v10 = [objc_alloc(*v9) initWithPath:pathCopy forEngine:engine configurationName:nameCopy];
    goto LABEL_9;
  }

  if ([pathCopy hasSuffix:@".bundle"])
  {
    v9 = off_278CA5B68;
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v12 = 138412290;
    v13 = pathCopy;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to initialize ADEspressoRunner. Model path extension is not .espresso.net/.bundle (%@)", &v12, 0xCu);
  }

  v10 = 0;
LABEL_9:

  return v10;
}

@end