@interface PHASEEnvelopeDistanceModelParameters
- (PHASEEnvelopeDistanceModelParameters)init;
- (PHASEEnvelopeDistanceModelParameters)initWithEnvelope:(PHASEEnvelope *)envelope;
@end

@implementation PHASEEnvelopeDistanceModelParameters

- (PHASEEnvelopeDistanceModelParameters)init
{
  [(PHASEEnvelopeDistanceModelParameters *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEEnvelopeDistanceModelParameters)initWithEnvelope:(PHASEEnvelope *)envelope
{
  *&v46[5] = *MEMORY[0x277D85DE8];
  v5 = envelope;
  v40.receiver = self;
  v40.super_class = PHASEEnvelopeDistanceModelParameters;
  initInternal = [(PHASEDistanceModelParameters *)&v40 initInternal];
  if (initInternal)
  {
    startPoint = [(PHASEEnvelope *)v5 startPoint];
    if (v8 >= 0.0)
    {
      startPoint2 = [(PHASEEnvelope *)v5 startPoint];
      if (v12 >= 0.0 && (startPoint2 = [(PHASEEnvelope *)v5 startPoint], v14 = v13, v13 <= 1.0))
      {
        for (i = 0; ; ++i)
        {
          segments = [(PHASEEnvelope *)v5 segments];
          v19 = [segments count] > i;

          if (!v19)
          {
            objc_storeStrong(initInternal + 2, envelope);
            goto LABEL_18;
          }

          segments2 = [(PHASEEnvelope *)v5 segments];
          v21 = [segments2 objectAtIndexedSubscript:i];
          [v21 endPoint];
          v23 = v22 < 0.0;

          if (v23)
          {
            break;
          }

          segments3 = [(PHASEEnvelope *)v5 segments];
          v26 = [segments3 objectAtIndexedSubscript:i];
          [v26 endPoint];
          if (v27 < 0.0)
          {

LABEL_24:
            v9 = **(Phase::Logger::GetInstance(v32) + 448);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              segments4 = [(PHASEEnvelope *)v5 segments];
              v38 = [segments4 objectAtIndexedSubscript:i];
              [v38 endPoint];
              *buf = 136315906;
              v42 = "PHASEDistanceModel.mm";
              v43 = 1024;
              v44 = 173;
              v45 = 1024;
              v46[0] = i;
              LOWORD(v46[1]) = 2048;
              *(&v46[1] + 2) = v39;
              _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d PHASEEnvelopeDistanceModelParameters:initWithEnvelope: envelope.segments[%d].endPoint.y (%f) is out-of-range [0, 1]. Returning nil.", buf, 0x22u);
            }

            goto LABEL_10;
          }

          segments5 = [(PHASEEnvelope *)v5 segments];
          v29 = [segments5 objectAtIndexedSubscript:i];
          [v29 endPoint];
          v31 = v30 > 1.0;

          if (v31)
          {
            goto LABEL_24;
          }
        }

        v9 = **(Phase::Logger::GetInstance(v24) + 448);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          segments6 = [(PHASEEnvelope *)v5 segments];
          v35 = [segments6 objectAtIndexedSubscript:i];
          [v35 endPoint];
          *buf = 136315906;
          v42 = "PHASEDistanceModel.mm";
          v43 = 1024;
          v44 = 163;
          v45 = 1024;
          v46[0] = i;
          LOWORD(v46[1]) = 2048;
          *(&v46[1] + 2) = v36;
          _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d PHASEEnvelopeDistanceModelParameters:initWithEnvelope: envelope.segments[%d].endPoint.x (%f) is negative. Returning nil.", buf, 0x22u);
        }
      }

      else
      {
        v9 = **(Phase::Logger::GetInstance(startPoint2) + 448);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [(PHASEEnvelope *)v5 startPoint];
          *buf = 136315650;
          v42 = "PHASEDistanceModel.mm";
          v43 = 1024;
          v44 = 151;
          v45 = 2048;
          *v46 = v15;
          _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d PHASEEnvelopeDistanceModelParameters:initWithEnvelope: envelope.startPoint.y (%f) is out-of-range [0, 1]. Returning nil.", buf, 0x1Cu);
        }
      }
    }

    else
    {
      v9 = **(Phase::Logger::GetInstance(startPoint) + 448);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(PHASEEnvelope *)v5 startPoint];
        *buf = 136315650;
        v42 = "PHASEDistanceModel.mm";
        v43 = 1024;
        v44 = 141;
        v45 = 2048;
        *v46 = v10;
        _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d PHASEEnvelopeDistanceModelParameters:initWithEnvelope: envelope.startPoint.x (%f) is negative. Returning nil.", buf, 0x1Cu);
      }
    }

LABEL_10:

    v16 = 0;
  }

  else
  {
LABEL_18:
    v16 = initInternal;
  }

  return v16;
}

@end