@interface AUALocklessTimestamp
- (id).cxx_construct;
- (void)reset:(unint64_t)a3;
- (void)write:(double)a3 hostTime:(unint64_t)a4;
@end

@implementation AUALocklessTimestamp

- (void)write:(double)a3 hostTime:(unint64_t)a4
{
  v4 = atomic_load(&self->_timestamps.mIndex);
  v5 = (-++v4 & 0x80000000) != 0;
  v6 = -v4 & 3;
  v7 = v4 & 3;
  if (!v5)
  {
    v7 = -v6;
  }

  v8 = (&self->super.isa + v7);
  atomic_store(*&a3, v8 + 1);
  atomic_store(a4, v8 + 5);
  atomic_store(v7, &self->_timestamps.mIndex);
}

- (void)reset:(unint64_t)a3
{
  self->_seed = a3;
  atomic_store(0, &self->_timestamps.mIndex);
  atomic_store(0, &self->_timestamps);
  atomic_store(0, &self->_timestamps.mHostTime[0].__a_.__a_value);
  atomic_store(0, &self->_timestamps.mSampleTime[1]);
  atomic_store(0, &self->_timestamps.mHostTime[1].__a_.__a_value);
  atomic_store(0, &self->_timestamps.mSampleTime[2]);
  atomic_store(0, &self->_timestamps.mHostTime[2].__a_.__a_value);
  atomic_store(0, &self->_timestamps.mSampleTime[3]);
  atomic_store(0, &self->_timestamps.mHostTime[3].__a_.__a_value);
}

- (id).cxx_construct
{
  *(self + 18) = 0;
  *(self + 10) = 0;
  return self;
}

@end