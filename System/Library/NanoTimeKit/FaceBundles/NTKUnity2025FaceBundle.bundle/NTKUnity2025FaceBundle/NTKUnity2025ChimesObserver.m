@interface NTKUnity2025ChimesObserver
+ (NTKUnity2025ChimesObserver)sharedInstance;
- (NTKUnity2025ChimesObserver)init;
- (void)dealloc;
- (void)faceCollection:(id)a3 didSelectFace:(id)a4 atIndex:(unint64_t)a5;
@end

@implementation NTKUnity2025ChimesObserver

+ (NTKUnity2025ChimesObserver)sharedInstance
{
  if (qword_281459BB0 != -1)
  {
    sub_23C09FAB4();
  }

  v3 = qword_281459BB8;

  return v3;
}

- (NTKUnity2025ChimesObserver)init
{
  v9.receiver = self;
  v9.super_class = NTKUnity2025ChimesObserver;
  v2 = [(NTKUnity2025ChimesObserver *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D2C0A0]);
    v4 = [v3 initWithCollectionIdentifier:*MEMORY[0x277D2BEA0] deviceUUID:0];
    libraryFaceCollection = v2->_libraryFaceCollection;
    v2->_libraryFaceCollection = v4;

    v6 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_23C099000, v6, OS_LOG_TYPE_DEFAULT, "Unity2025: Add chimes observer", v8, 2u);
    }

    [(NTKPersistentFaceCollection *)v2->_libraryFaceCollection addObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C099000, v3, OS_LOG_TYPE_DEFAULT, "Unity2025: Remove chimes observer", buf, 2u);
  }

  [(NTKPersistentFaceCollection *)self->_libraryFaceCollection removeObserver:self];
  v4.receiver = self;
  v4.super_class = NTKUnity2025ChimesObserver;
  [(NTKUnity2025ChimesObserver *)&v4 dealloc];
}

- (void)faceCollection:(id)a3 didSelectFace:(id)a4 atIndex:(unint64_t)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_23C099000, v6, OS_LOG_TYPE_DEFAULT, "Unity2025: Face collection changed selected face", &v15, 2u);
  }

  v7 = [v5 bundleIdentifier];

  v8 = +[(NTKFaceBundle *)NTKUnity2025FaceBundle];
  v9 = [v7 isEqual:v8];

  v10 = [MEMORY[0x277CE6FA8] sharedInstance];
  LODWORD(v8) = [v10 voiceOverTapticChimesUnity25Active];

  if (v9 != v8)
  {
    v11 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x277CCABB0] numberWithBool:v9];
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_23C099000, v11, OS_LOG_TYPE_DEFAULT, "Unity2025: Set Unity chimes active preference to %@", &v15, 0xCu);
    }

    v13 = [MEMORY[0x277CE6FA8] sharedInstance];
    [v13 setVoiceOverTapticChimesUnity25Active:v9];
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end