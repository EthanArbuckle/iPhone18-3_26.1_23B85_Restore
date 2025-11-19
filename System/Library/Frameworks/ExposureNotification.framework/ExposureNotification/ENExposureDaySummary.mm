@interface ENExposureDaySummary
- (ENExposureDaySummary)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)description;
- (void)encodeWithXPCObject:(id)a3;
- (void)roundDurations;
@end

@implementation ENExposureDaySummary

- (ENExposureDaySummary)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21.receiver = self;
  v21.super_class = ENExposureDaySummary;
  v7 = [(ENExposureDaySummary *)&v21 init];
  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_18;
    }

LABEL_22:
    ENErrorF(2);
    *a4 = v19 = 0;
    goto LABEL_16;
  }

  if (MEMORY[0x2383EE9C0](v6) != MEMORY[0x277D86468])
  {
    if (!a4)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  if (!CUXPCDecodeDouble())
  {
LABEL_18:
    v19 = 0;
    goto LABEL_16;
  }

  v8 = xpc_dictionary_get_dictionary(v6, "siCT");
  if (v8)
  {
    v9 = [[ENExposureSummaryItem alloc] initWithXPCObject:v8 error:a4];
    confirmedTestSummary = v7->_confirmedTestSummary;
    v7->_confirmedTestSummary = v9;

    if (!v7->_confirmedTestSummary)
    {
      goto LABEL_17;
    }
  }

  v8 = xpc_dictionary_get_dictionary(v6, "siCC");
  if (v8)
  {
    v11 = [[ENExposureSummaryItem alloc] initWithXPCObject:v8 error:a4];
    confirmedClinicalDiagnosisSummary = v7->_confirmedClinicalDiagnosisSummary;
    v7->_confirmedClinicalDiagnosisSummary = v11;

    if (!v7->_confirmedClinicalDiagnosisSummary)
    {
      goto LABEL_17;
    }
  }

  v8 = xpc_dictionary_get_dictionary(v6, "siRC");
  if (v8)
  {
    v13 = [[ENExposureSummaryItem alloc] initWithXPCObject:v8 error:a4];
    recursiveSummary = v7->_recursiveSummary;
    v7->_recursiveSummary = v13;

    if (!v7->_recursiveSummary)
    {
      goto LABEL_17;
    }
  }

  v8 = xpc_dictionary_get_dictionary(v6, "siSR");
  if (v8)
  {
    v15 = [[ENExposureSummaryItem alloc] initWithXPCObject:v8 error:a4];
    selfReportedSummary = v7->_selfReportedSummary;
    v7->_selfReportedSummary = v15;

    if (!v7->_selfReportedSummary)
    {
LABEL_17:

      goto LABEL_18;
    }
  }

  v8 = xpc_dictionary_get_dictionary(v6, "siDay");
  if (v8)
  {
    v17 = [[ENExposureSummaryItem alloc] initWithXPCObject:v8 error:a4];
    if (v17)
    {
      daySummary = v7->_daySummary;
      v7->_daySummary = v17;

      goto LABEL_15;
    }

    goto LABEL_17;
  }

LABEL_15:

  v19 = v7;
LABEL_16:

  return v19;
}

- (void)encodeWithXPCObject:(id)a3
{
  xdict = a3;
  v4 = self->_date;
  v5 = v4;
  if (v4)
  {
    [(NSDate *)v4 timeIntervalSinceReferenceDate];
    if (v6 != 0.0)
    {
      xpc_dictionary_set_double(xdict, "tims", v6);
    }
  }

  confirmedTestSummary = self->_confirmedTestSummary;
  if (confirmedTestSummary)
  {
    v8 = confirmedTestSummary;
    v9 = xpc_dictionary_create(0, 0, 0);
    [(ENExposureSummaryItem *)v8 encodeWithXPCObject:v9];

    xpc_dictionary_set_value(xdict, "siCT", v9);
  }

  confirmedClinicalDiagnosisSummary = self->_confirmedClinicalDiagnosisSummary;
  if (confirmedClinicalDiagnosisSummary)
  {
    v11 = confirmedClinicalDiagnosisSummary;
    v12 = xpc_dictionary_create(0, 0, 0);
    [(ENExposureSummaryItem *)v11 encodeWithXPCObject:v12];

    xpc_dictionary_set_value(xdict, "siCC", v12);
  }

  recursiveSummary = self->_recursiveSummary;
  if (recursiveSummary)
  {
    v14 = recursiveSummary;
    v15 = xpc_dictionary_create(0, 0, 0);
    [(ENExposureSummaryItem *)v14 encodeWithXPCObject:v15];

    xpc_dictionary_set_value(xdict, "siRC", v15);
  }

  selfReportedSummary = self->_selfReportedSummary;
  if (selfReportedSummary)
  {
    v17 = selfReportedSummary;
    v18 = xpc_dictionary_create(0, 0, 0);
    [(ENExposureSummaryItem *)v17 encodeWithXPCObject:v18];

    xpc_dictionary_set_value(xdict, "siSR", v18);
  }

  daySummary = self->_daySummary;
  v20 = xdict;
  if (daySummary)
  {
    v21 = daySummary;
    v22 = xpc_dictionary_create(0, 0, 0);
    [(ENExposureSummaryItem *)v21 encodeWithXPCObject:v22];

    xpc_dictionary_set_value(xdict, "siDay", v22);
    v20 = xdict;
  }
}

- (id)description
{
  NSAppendPrintF_safe();
  v21 = 0;
  date = self->_date;
  NSAppendPrintF_safe();
  v3 = v21;

  daySummary = self->_daySummary;
  if (daySummary)
  {
    v5 = daySummary;
    [(ENExposureSummaryItem *)v5 maximumScore];
    [(ENExposureSummaryItem *)v5 scoreSum];
    [(ENExposureSummaryItem *)v5 weightedDurationSum];
    NSAppendPrintF_safe();
    v6 = v3;

    v3 = v6;
  }

  confirmedTestSummary = self->_confirmedTestSummary;
  if (confirmedTestSummary)
  {
    v8 = confirmedTestSummary;
    [(ENExposureSummaryItem *)v8 maximumScore];
    [(ENExposureSummaryItem *)v8 scoreSum];
    [(ENExposureSummaryItem *)v8 weightedDurationSum];
    NSAppendPrintF_safe();
    v9 = v3;

    v3 = v9;
  }

  confirmedClinicalDiagnosisSummary = self->_confirmedClinicalDiagnosisSummary;
  if (confirmedClinicalDiagnosisSummary)
  {
    v11 = confirmedClinicalDiagnosisSummary;
    [(ENExposureSummaryItem *)v11 maximumScore];
    [(ENExposureSummaryItem *)v11 scoreSum];
    [(ENExposureSummaryItem *)v11 weightedDurationSum];
    NSAppendPrintF_safe();
    v12 = v3;

    v3 = v12;
  }

  recursiveSummary = self->_recursiveSummary;
  if (recursiveSummary)
  {
    v14 = recursiveSummary;
    [(ENExposureSummaryItem *)v14 maximumScore];
    [(ENExposureSummaryItem *)v14 scoreSum];
    [(ENExposureSummaryItem *)v14 weightedDurationSum];
    NSAppendPrintF_safe();
    v15 = v3;

    v3 = v15;
  }

  selfReportedSummary = self->_selfReportedSummary;
  if (selfReportedSummary)
  {
    v17 = selfReportedSummary;
    [(ENExposureSummaryItem *)v17 maximumScore];
    [(ENExposureSummaryItem *)v17 scoreSum];
    [(ENExposureSummaryItem *)v17 weightedDurationSum];
    NSAppendPrintF_safe();
    v18 = v3;

    v3 = v18;
  }

  return v3;
}

- (void)roundDurations
{
  [(ENExposureSummaryItem *)self->_confirmedTestSummary roundDurations];
  [(ENExposureSummaryItem *)self->_confirmedClinicalDiagnosisSummary roundDurations];
  [(ENExposureSummaryItem *)self->_recursiveSummary roundDurations];
  [(ENExposureSummaryItem *)self->_selfReportedSummary roundDurations];
  daySummary = self->_daySummary;

  [(ENExposureSummaryItem *)daySummary roundDurations];
}

@end