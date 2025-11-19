@interface ADEspressoRunner
+ (id)espressoRunnerForPath:(id)a3 forEngine:(unint64_t)a4 configurationName:(id)a5;
- (ADEspressoRunner)initWithPath:(id)a3 forEngine:(unint64_t)a4 configurationName:(id)a5;
- (id)registerDescriptor:(id)a3;
@end

@implementation ADEspressoRunner

- (id)registerDescriptor:(id)a3
{
  v3 = [(ADEspressoRunnerProtocol *)self->_espressoRunner registerDescriptor:a3];

  return v3;
}

- (ADEspressoRunner)initWithPath:(id)a3 forEngine:(unint64_t)a4 configurationName:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = ADEspressoRunner;
  v10 = [(ADEspressoRunner *)&v15 init];
  if (v10 && ([ADEspressoRunner espressoRunnerForPath:v8 forEngine:a4 configurationName:v9], v11 = objc_claimAutoreleasedReturnValue(), espressoRunner = v10->_espressoRunner, v10->_espressoRunner = v11, espressoRunner, !v10->_espressoRunner))
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  return v13;
}

+ (id)espressoRunnerForPath:(id)a3 forEngine:(unint64_t)a4 configurationName:(id)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if ([v7 hasSuffix:@".espresso.net"])
  {
    v9 = off_278CA5B60;
LABEL_5:
    v10 = [objc_alloc(*v9) initWithPath:v7 forEngine:a4 configurationName:v8];
    goto LABEL_9;
  }

  if ([v7 hasSuffix:@".bundle"])
  {
    v9 = off_278CA5B68;
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to initialize ADEspressoRunner. Model path extension is not .espresso.net/.bundle (%@)", &v12, 0xCu);
  }

  v10 = 0;
LABEL_9:

  return v10;
}

@end