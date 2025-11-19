@interface _EXPersona
+ (_EXPersona)personaWithPersonaUniqueString:(id)a3;
+ (id)currentPersona;
- (_EXPersona)initWithCoder:(id)a3;
- (_EXPersona)initWithPersonaUniqueString:(id)a3;
@end

@implementation _EXPersona

- (_EXPersona)initWithPersonaUniqueString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _EXPersona;
  v6 = [(_EXPersona *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_personaUniqueString, a3);
  }

  return v7;
}

- (_EXPersona)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _EXPersona;
  v5 = [(_EXPersona *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personaUniqueString"];
    personaUniqueString = v5->_personaUniqueString;
    v5->_personaUniqueString = v6;
  }

  return v5;
}

+ (id)currentPersona
{
  v2 = [MEMORY[0x1E69DF068] sharedManager];
  v3 = [v2 currentPersona];
  v4 = [v3 userPersonaUniqueString];

  v5 = [_EXPersona personaWithPersonaUniqueString:v4];

  return v5;
}

+ (_EXPersona)personaWithPersonaUniqueString:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    v5 = [[_EXPersona alloc] initWithPersonaUniqueString:v3];

    return v5;
  }

  else
  {
    v7 = _EXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [_EXPersona personaWithPersonaUniqueString:v7];
    }

    __break(1u);
  }

  return result;
}

+ (void)personaWithPersonaUniqueString:(os_log_t)log .cold.1(os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = "personaUniqueString != nil";
  v4 = 2080;
  v2 = 136315650;
  v5 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/EXPersona.m";
  v6 = 1024;
  v7 = 63;
  _os_log_fault_impl(&dword_1847D1000, log, OS_LOG_TYPE_FAULT, "%s - %s:%d: Persona unique string should not be nil", &v2, 0x1Cu);
  v1 = *MEMORY[0x1E69E9840];
}

@end