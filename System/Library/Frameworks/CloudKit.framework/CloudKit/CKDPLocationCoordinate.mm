@interface CKDPLocationCoordinate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCourse:(BOOL)a3;
- (void)setHasHorizontalAccuracy:(BOOL)a3;
- (void)setHasLatitude:(BOOL)a3;
- (void)setHasLongitude:(BOOL)a3;
- (void)setHasSpeed:(BOOL)a3;
- (void)setHasVerticalAccuracy:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPLocationCoordinate

- (void)setHasLatitude:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasLongitude:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasHorizontalAccuracy:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasVerticalAccuracy:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasCourse:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSpeed:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CKDPLocationCoordinate;
  v4 = [(CKDPLocationCoordinate *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2);
  has = self->_has;
  if ((has & 8) != 0)
  {
    v14 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v4, v5, self->_latitude);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"latitude");

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v16 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v4, v5, self->_longitude);
  objc_msgSend_setObject_forKey_(v6, v17, v16, @"longitude");

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v18 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v4, v5, self->_horizontalAccuracy);
  objc_msgSend_setObject_forKey_(v6, v19, v18, @"horizontalAccuracy");

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v20 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v4, v5, self->_altitude);
  objc_msgSend_setObject_forKey_(v6, v21, v20, @"altitude");

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v22 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v4, v5, self->_verticalAccuracy);
  objc_msgSend_setObject_forKey_(v6, v23, v22, @"verticalAccuracy");

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  v24 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v4, v5, self->_course);
  objc_msgSend_setObject_forKey_(v6, v25, v24, @"course");

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    v8 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v4, v5, self->_speed);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"speed");
  }

LABEL_9:
  timestamp = self->_timestamp;
  if (timestamp)
  {
    v11 = objc_msgSend_dictionaryRepresentation(timestamp, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"timestamp");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v13 = v4;
  if ((has & 8) != 0)
  {
    latitude = self->_latitude;
    PBDataWriterWriteDoubleField();
    v4 = v13;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  longitude = self->_longitude;
  PBDataWriterWriteDoubleField();
  v4 = v13;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  horizontalAccuracy = self->_horizontalAccuracy;
  PBDataWriterWriteDoubleField();
  v4 = v13;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  altitude = self->_altitude;
  PBDataWriterWriteDoubleField();
  v4 = v13;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  verticalAccuracy = self->_verticalAccuracy;
  PBDataWriterWriteDoubleField();
  v4 = v13;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  course = self->_course;
  PBDataWriterWriteDoubleField();
  v4 = v13;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    speed = self->_speed;
    PBDataWriterWriteDoubleField();
    v4 = v13;
  }

LABEL_9:
  if (self->_timestamp)
  {
    PBDataWriterWriteSubmessage();
    v4 = v13;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[4] = *&self->_latitude;
    *(v4 + 72) |= 8u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v4[5] = *&self->_longitude;
  *(v4 + 72) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v4[3] = *&self->_horizontalAccuracy;
  *(v4 + 72) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v4[1] = *&self->_altitude;
  *(v4 + 72) |= 1u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4[7] = *&self->_verticalAccuracy;
  *(v4 + 72) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  v4[2] = *&self->_course;
  *(v4 + 72) |= 2u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    v4[6] = *&self->_speed;
    *(v4 + 72) |= 0x20u;
  }

LABEL_9:
  timestamp = self->_timestamp;
  if (timestamp)
  {
    v8 = v4;
    objc_msgSend_setTimestamp_(v4, v5, timestamp);
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v10 + 32) = self->_latitude;
    *(v10 + 72) |= 8u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v10 + 40) = self->_longitude;
  *(v10 + 72) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v10 + 24) = self->_horizontalAccuracy;
  *(v10 + 72) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v10 + 8) = self->_altitude;
  *(v10 + 72) |= 1u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    *(v10 + 16) = self->_course;
    *(v10 + 72) |= 2u;
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_14:
  *(v10 + 56) = self->_verticalAccuracy;
  *(v10 + 72) |= 0x40u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((has & 0x20) != 0)
  {
LABEL_8:
    *(v10 + 48) = self->_speed;
    *(v10 + 72) |= 0x20u;
  }

LABEL_9:
  v14 = objc_msgSend_copyWithZone_(self->_timestamp, v11, a3);
  v15 = v12[8];
  v12[8] = v14;

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_39;
  }

  v8 = *(v4 + 72);
  if ((*&self->_has & 8) != 0)
  {
    if ((v4[9] & 8) == 0 || self->_latitude != *(v4 + 4))
    {
      goto LABEL_39;
    }
  }

  else if ((v4[9] & 8) != 0)
  {
LABEL_39:
    isEqual = 0;
    goto LABEL_40;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((v4[9] & 0x10) == 0 || self->_longitude != *(v4 + 5))
    {
      goto LABEL_39;
    }
  }

  else if ((v4[9] & 0x10) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((v4[9] & 4) == 0 || self->_horizontalAccuracy != *(v4 + 3))
    {
      goto LABEL_39;
    }
  }

  else if ((v4[9] & 4) != 0)
  {
    goto LABEL_39;
  }

  if (*&self->_has)
  {
    if ((v4[9] & 1) == 0 || self->_altitude != *(v4 + 1))
    {
      goto LABEL_39;
    }
  }

  else if (v4[9])
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((v4[9] & 0x40) == 0 || self->_verticalAccuracy != *(v4 + 7))
    {
      goto LABEL_39;
    }
  }

  else if ((v4[9] & 0x40) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((v4[9] & 2) == 0 || self->_course != *(v4 + 2))
    {
      goto LABEL_39;
    }
  }

  else if ((v4[9] & 2) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((v4[9] & 0x20) == 0 || self->_speed != *(v4 + 6))
    {
      goto LABEL_39;
    }
  }

  else if ((v4[9] & 0x20) != 0)
  {
    goto LABEL_39;
  }

  timestamp = self->_timestamp;
  v10 = v4[8];
  if (timestamp | v10)
  {
    isEqual = objc_msgSend_isEqual_(timestamp, v7, v10);
  }

  else
  {
    isEqual = 1;
  }

LABEL_40:

  return isEqual;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    latitude = self->_latitude;
    if (latitude < 0.0)
    {
      latitude = -latitude;
    }

    *v3.i64 = floor(latitude + 0.5);
    v7 = (latitude - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v8), v4, v3);
    v5 = 2654435761u * *v3.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    longitude = self->_longitude;
    if (longitude < 0.0)
    {
      longitude = -longitude;
    }

    *v3.i64 = floor(longitude + 0.5);
    v11 = (longitude - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v12), v4, v3);
    v9 = 2654435761u * *v3.i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    horizontalAccuracy = self->_horizontalAccuracy;
    if (horizontalAccuracy < 0.0)
    {
      horizontalAccuracy = -horizontalAccuracy;
    }

    *v3.i64 = floor(horizontalAccuracy + 0.5);
    v15 = (horizontalAccuracy - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v16), v4, v3);
    v13 = 2654435761u * *v3.i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if (*&self->_has)
  {
    altitude = self->_altitude;
    if (altitude < 0.0)
    {
      altitude = -altitude;
    }

    *v3.i64 = floor(altitude + 0.5);
    v19 = (altitude - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v20), v4, v3);
    v17 = 2654435761u * *v3.i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabs(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    verticalAccuracy = self->_verticalAccuracy;
    if (verticalAccuracy < 0.0)
    {
      verticalAccuracy = -verticalAccuracy;
    }

    *v3.i64 = floor(verticalAccuracy + 0.5);
    v23 = (verticalAccuracy - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v24), v4, v3);
    v21 = 2654435761u * *v3.i64;
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v21 += v23;
      }
    }

    else
    {
      v21 -= fabs(v23);
    }
  }

  else
  {
    v21 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    course = self->_course;
    if (course < 0.0)
    {
      course = -course;
    }

    *v3.i64 = floor(course + 0.5);
    v27 = (course - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v28.f64[0] = NAN;
    v28.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v28), v4, v3);
    v25 = 2654435761u * *v3.i64;
    if (v27 >= 0.0)
    {
      if (v27 > 0.0)
      {
        v25 += v27;
      }
    }

    else
    {
      v25 -= fabs(v27);
    }
  }

  else
  {
    v25 = 0;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    speed = self->_speed;
    if (speed < 0.0)
    {
      speed = -speed;
    }

    *v3.i64 = floor(speed + 0.5);
    v31 = (speed - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    v29 = 2654435761u * *vbslq_s8(vnegq_f64(v32), v4, v3).i64;
    if (v31 >= 0.0)
    {
      if (v31 > 0.0)
      {
        v29 += v31;
      }
    }

    else
    {
      v29 -= fabs(v31);
    }
  }

  else
  {
    v29 = 0;
  }

  return v9 ^ v5 ^ v13 ^ v17 ^ v21 ^ v25 ^ v29 ^ objc_msgSend_hash(self->_timestamp, a2, v2);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 72);
  if ((v6 & 8) != 0)
  {
    self->_latitude = v4[4];
    *&self->_has |= 8u;
    v6 = *(v4 + 72);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4[9] & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_longitude = v4[5];
  *&self->_has |= 0x10u;
  v6 = *(v4 + 72);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_horizontalAccuracy = v4[3];
  *&self->_has |= 4u;
  v6 = *(v4 + 72);
  if ((v6 & 1) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_altitude = v4[1];
  *&self->_has |= 1u;
  v6 = *(v4 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_verticalAccuracy = v4[7];
  *&self->_has |= 0x40u;
  v6 = *(v4 + 72);
  if ((v6 & 2) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  self->_course = v4[2];
  *&self->_has |= 2u;
  if ((v4[9] & 0x20) != 0)
  {
LABEL_8:
    self->_speed = v4[6];
    *&self->_has |= 0x20u;
  }

LABEL_9:
  timestamp = self->_timestamp;
  v8 = *(v5 + 8);
  if (timestamp)
  {
    if (!v8)
    {
      goto LABEL_22;
    }

    v9 = v5;
    timestamp = objc_msgSend_mergeFrom_(timestamp, v5, v8);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_22;
    }

    v9 = v5;
    timestamp = objc_msgSend_setTimestamp_(self, v5, v8);
  }

  v5 = v9;
LABEL_22:

  MEMORY[0x1EEE66BB8](timestamp, v5);
}

@end