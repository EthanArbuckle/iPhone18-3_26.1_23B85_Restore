@interface RAPRecord
- (RAPRecord)initWithReportID:(id)d reportType:(int)type reportSummary:(id)summary reportTitle:(id)title dateOfReportCreation:(id)creation countryCodeUponCreation:(id)uponCreation reportStatus:(signed __int16)status contentData:(id)self0 communityIdentifier:(id)self1 rapResponse:(id)self2;
- (id)debugDescription;
@end

@implementation RAPRecord

- (id)debugDescription
{
  reportID = [(RAPRecord *)self reportID];
  reportType = [(RAPRecord *)self reportType];
  if (reportType >= 0x16)
  {
    v5 = [NSString stringWithFormat:@"(unknown: %i)", reportType];
  }

  else
  {
    v5 = off_101626A00[reportType];
  }

  reportSummary = [(RAPRecord *)self reportSummary];
  reportTitle = [(RAPRecord *)self reportTitle];
  dateOfReportCreation = [(RAPRecord *)self dateOfReportCreation];
  countryCodeUponCreation = [(RAPRecord *)self countryCodeUponCreation];
  v10 = [NSNumber numberWithShort:[(RAPRecord *)self reportStatus]];
  v11 = [NSString stringWithFormat:@"Report ID: %@, Report type: %@, Report summary: %@, Report title: %@, Report creation cate: %@, Report country code: %@, Report status: %@", reportID, v5, reportSummary, reportTitle, dateOfReportCreation, countryCodeUponCreation, v10];

  return v11;
}

- (RAPRecord)initWithReportID:(id)d reportType:(int)type reportSummary:(id)summary reportTitle:(id)title dateOfReportCreation:(id)creation countryCodeUponCreation:(id)uponCreation reportStatus:(signed __int16)status contentData:(id)self0 communityIdentifier:(id)self1 rapResponse:(id)self2
{
  dCopy = d;
  summaryCopy = summary;
  titleCopy = title;
  creationCopy = creation;
  uponCreationCopy = uponCreation;
  dataCopy = data;
  identifierCopy = identifier;
  responseCopy = response;
  v36.receiver = self;
  v36.super_class = RAPRecord;
  v22 = [(RAPRecord *)&v36 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_reportID, d);
    v23->_reportType = type;
    v24 = [summaryCopy copy];
    reportSummary = v23->_reportSummary;
    v23->_reportSummary = v24;

    v26 = [titleCopy copy];
    reportTitle = v23->_reportTitle;
    v23->_reportTitle = v26;

    objc_storeStrong(&v23->_dateOfReportCreation, creation);
    v28 = [uponCreationCopy copy];
    countryCodeUponCreation = v23->_countryCodeUponCreation;
    v23->_countryCodeUponCreation = v28;

    v23->_reportStatus = status;
    objc_storeStrong(&v23->_contentData, data);
    objc_storeStrong(&v23->_communityIdentifier, identifier);
    objc_storeStrong(&v23->_rapResponse, response);
    v23->_clientRevision = 1;
  }

  return v23;
}

@end