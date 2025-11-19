@interface RAPRecord
- (RAPRecord)initWithReportID:(id)a3 reportType:(int)a4 reportSummary:(id)a5 reportTitle:(id)a6 dateOfReportCreation:(id)a7 countryCodeUponCreation:(id)a8 reportStatus:(signed __int16)a9 contentData:(id)a10 communityIdentifier:(id)a11 rapResponse:(id)a12;
- (id)debugDescription;
@end

@implementation RAPRecord

- (id)debugDescription
{
  v3 = [(RAPRecord *)self reportID];
  v4 = [(RAPRecord *)self reportType];
  if (v4 >= 0x16)
  {
    v5 = [NSString stringWithFormat:@"(unknown: %i)", v4];
  }

  else
  {
    v5 = off_101626A00[v4];
  }

  v6 = [(RAPRecord *)self reportSummary];
  v7 = [(RAPRecord *)self reportTitle];
  v8 = [(RAPRecord *)self dateOfReportCreation];
  v9 = [(RAPRecord *)self countryCodeUponCreation];
  v10 = [NSNumber numberWithShort:[(RAPRecord *)self reportStatus]];
  v11 = [NSString stringWithFormat:@"Report ID: %@, Report type: %@, Report summary: %@, Report title: %@, Report creation cate: %@, Report country code: %@, Report status: %@", v3, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (RAPRecord)initWithReportID:(id)a3 reportType:(int)a4 reportSummary:(id)a5 reportTitle:(id)a6 dateOfReportCreation:(id)a7 countryCodeUponCreation:(id)a8 reportStatus:(signed __int16)a9 contentData:(id)a10 communityIdentifier:(id)a11 rapResponse:(id)a12
{
  v34 = a3;
  v35 = a5;
  v18 = a6;
  v33 = a7;
  v19 = a8;
  v32 = a10;
  v20 = a11;
  v21 = a12;
  v36.receiver = self;
  v36.super_class = RAPRecord;
  v22 = [(RAPRecord *)&v36 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_reportID, a3);
    v23->_reportType = a4;
    v24 = [v35 copy];
    reportSummary = v23->_reportSummary;
    v23->_reportSummary = v24;

    v26 = [v18 copy];
    reportTitle = v23->_reportTitle;
    v23->_reportTitle = v26;

    objc_storeStrong(&v23->_dateOfReportCreation, a7);
    v28 = [v19 copy];
    countryCodeUponCreation = v23->_countryCodeUponCreation;
    v23->_countryCodeUponCreation = v28;

    v23->_reportStatus = a9;
    objc_storeStrong(&v23->_contentData, a10);
    objc_storeStrong(&v23->_communityIdentifier, a11);
    objc_storeStrong(&v23->_rapResponse, a12);
    v23->_clientRevision = 1;
  }

  return v23;
}

@end