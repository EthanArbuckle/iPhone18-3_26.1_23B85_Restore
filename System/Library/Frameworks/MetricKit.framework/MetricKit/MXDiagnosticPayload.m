@interface MXDiagnosticPayload
- (MXDiagnosticPayload)initWithCoder:(id)a3;
- (MXDiagnosticPayload)initWithTimeStampBegin:(id)a3 withTimeStampEnd:(id)a4 withDiagnostics:(id)a5;
- (NSData)JSONRepresentation;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXDiagnosticPayload

- (void)encodeWithCoder:(id)a3
{
  timeStampBegin = self->_timeStampBegin;
  v5 = a3;
  [v5 encodeObject:timeStampBegin forKey:@"timeStampBegin"];
  [v5 encodeObject:self->_timeStampEnd forKey:@"timeStampEnd"];
  [v5 encodeObject:self->_cpuExceptionDiagnostics forKey:@"cpuExceptionDiagnostics"];
  [v5 encodeObject:self->_diskWriteExceptionDiagnostics forKey:@"diskWriteExceptionDiagnostics"];
  [v5 encodeObject:self->_hangDiagnostics forKey:@"hangDiagnostics"];
  [v5 encodeObject:self->_appLaunchDiagnostics forKey:@"appLaunchDiagnostics"];
  [v5 encodeObject:self->_crashDiagnostics forKey:@"crashDiagnostics"];
}

- (MXDiagnosticPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = MXDiagnosticPayload;
  v5 = [(MXDiagnosticPayload *)&v36 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeStampBegin"];
    timeStampBegin = v5->_timeStampBegin;
    v5->_timeStampBegin = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeStampEnd"];
    timeStampEnd = v5->_timeStampEnd;
    v5->_timeStampEnd = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"cpuExceptionDiagnostics"];
    cpuExceptionDiagnostics = v5->_cpuExceptionDiagnostics;
    v5->_cpuExceptionDiagnostics = v13;

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"diskWriteExceptionDiagnostics"];
    diskWriteExceptionDiagnostics = v5->_diskWriteExceptionDiagnostics;
    v5->_diskWriteExceptionDiagnostics = v18;

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"hangDiagnostics"];
    hangDiagnostics = v5->_hangDiagnostics;
    v5->_hangDiagnostics = v23;

    v25 = MEMORY[0x277CBEB98];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"appLaunchDiagnostics"];
    appLaunchDiagnostics = v5->_appLaunchDiagnostics;
    v5->_appLaunchDiagnostics = v28;

    v30 = MEMORY[0x277CBEB98];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"crashDiagnostics"];
    crashDiagnostics = v5->_crashDiagnostics;
    v5->_crashDiagnostics = v33;
  }

  return v5;
}

- (MXDiagnosticPayload)initWithTimeStampBegin:(id)a3 withTimeStampEnd:(id)a4 withDiagnostics:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v25.receiver = self;
  v25.super_class = MXDiagnosticPayload;
  v12 = [(MXDiagnosticPayload *)&v25 init];
  if (!v12)
  {
    goto LABEL_5;
  }

  v13 = 0;
  if (v9 && v10)
  {
    v14 = [v11 valueForKey:@"cpuExceptionDiagnostics"];
    cpuExceptionDiagnostics = v12->_cpuExceptionDiagnostics;
    v12->_cpuExceptionDiagnostics = v14;

    v16 = [v11 valueForKey:@"diskWriteExceptionDiagnostics"];
    diskWriteExceptionDiagnostics = v12->_diskWriteExceptionDiagnostics;
    v12->_diskWriteExceptionDiagnostics = v16;

    v18 = [v11 valueForKey:@"hangDiagnostics"];
    hangDiagnostics = v12->_hangDiagnostics;
    v12->_hangDiagnostics = v18;

    v20 = [v11 valueForKey:@"appLaunchDiagnostics"];
    appLaunchDiagnostics = v12->_appLaunchDiagnostics;
    v12->_appLaunchDiagnostics = v20;

    v22 = [v11 valueForKey:@"crashDiagnostics"];
    crashDiagnostics = v12->_crashDiagnostics;
    v12->_crashDiagnostics = v22;

    objc_storeStrong(&v12->_timeStampEnd, a4);
    objc_storeStrong(&v12->_timeStampBegin, a3);
LABEL_5:
    v13 = v12;
  }

  return v13;
}

- (NSData)JSONRepresentation
{
  v2 = [(MXDiagnosticPayload *)self toDictionary];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v2])
  {
    v5 = 0;
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v2 options:1 error:&v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)toDictionary
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  v5 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];
  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  if (self->_timeStampBegin)
  {
    v6 = [v4 stringFromDate:?];
    [v3 setObject:v6 forKey:@"timeStampBegin"];
  }

  if (self->_timeStampEnd)
  {
    v7 = [v4 stringFromDate:?];
    [v3 setObject:v7 forKey:@"timeStampEnd"];
  }

  if (self->_cpuExceptionDiagnostics)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v9 = self->_cpuExceptionDiagnostics;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v62;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v62 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v61 + 1) + 8 * i) toDictionary];
          [v8 addObject:v14];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v61 objects:v69 count:16];
      }

      while (v11);
    }

    [v3 setValue:v8 forKey:@"cpuExceptionDiagnostics"];
  }

  if (self->_diskWriteExceptionDiagnostics)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v16 = self->_diskWriteExceptionDiagnostics;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v57 objects:v68 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v58;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v58 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v57 + 1) + 8 * j) toDictionary];
          [v15 addObject:v21];
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v57 objects:v68 count:16];
      }

      while (v18);
    }

    [v3 setValue:v15 forKey:@"diskWriteExceptionDiagnostics"];
  }

  if (self->_hangDiagnostics)
  {
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v23 = self->_hangDiagnostics;
    v24 = [(NSArray *)v23 countByEnumeratingWithState:&v53 objects:v67 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v54;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v54 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v53 + 1) + 8 * k) toDictionary];
          [v22 addObject:v28];
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v53 objects:v67 count:16];
      }

      while (v25);
    }

    [v3 setValue:v22 forKey:@"hangDiagnostics"];
  }

  if (self->_appLaunchDiagnostics)
  {
    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v30 = self->_appLaunchDiagnostics;
    v31 = [(NSArray *)v30 countByEnumeratingWithState:&v49 objects:v66 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v50;
      do
      {
        for (m = 0; m != v32; ++m)
        {
          if (*v50 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [*(*(&v49 + 1) + 8 * m) toDictionary];
          [v29 addObject:v35];
        }

        v32 = [(NSArray *)v30 countByEnumeratingWithState:&v49 objects:v66 count:16];
      }

      while (v32);
    }

    [v3 setValue:v29 forKey:@"appLaunchDiagnostics"];
  }

  if (self->_crashDiagnostics)
  {
    v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v37 = self->_crashDiagnostics;
    v38 = [(NSArray *)v37 countByEnumeratingWithState:&v45 objects:v65 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v46;
      do
      {
        for (n = 0; n != v39; ++n)
        {
          if (*v46 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = [*(*(&v45 + 1) + 8 * n) toDictionary];
          [v36 addObject:v42];
        }

        v39 = [(NSArray *)v37 countByEnumeratingWithState:&v45 objects:v65 count:16];
      }

      while (v39);
    }

    [v3 setValue:v36 forKey:@"crashDiagnostics"];
  }

  v43 = *MEMORY[0x277D85DE8];

  return v3;
}

@end